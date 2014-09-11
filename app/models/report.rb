class Report < ActiveRecord::Base
  TST_FEED = 'http://www.tst.jus.br/noticias/-/journal/rss/57294?doAsGroupId=10157&refererPlid=10730&_15_groupId=10157'
  JORNAL_JURID_FEED = 'http://jornal.jurid.com.br/rss-feed'
  DIREITO_ESTADO_NOTICIAS_FEED = 'http://www.direitodoestado.com.br/rss/noticias.rss'

  @@tst_feed = Feedzirra::Feed.fetch_and_parse(TST_FEED)
  @@d_est_news_feed = Feedzirra::Feed.fetch_and_parse(DIREITO_ESTADO_NOTICIAS_FEED)

  validates :published_at, presence: true
  validates :title,        presence: true
  validates :url,          presence: true, format: /\Ahttps?:\/\/.+\z/

  before_validation do
    self.published_at = Time.now if self.published_at.blank?
  end

  scope :recent, order('published_at DESC')

  def self.fetch_news(qty)
    news = []
    if Report.count == 0 || (Report.recent.limit(1).first.published_at + 2.hour) < Time.now
      update_direito_estado_noticias_feed
      update_tst_feed
    end
    Report.recent.limit(10)
  end

  def self.update_direito_estado_noticias_feed
    @@d_est_news_feed = Feedzirra::Feed.fetch_and_parse(DIREITO_ESTADO_NOTICIAS_FEED)
    unless @@d_est_news_feed == 200 || @@d_est_news_feed == 0 || @@d_est_news_feed == 500
      @@d_est_news_feed.entries.each do |entry|
        unless Report.find_by(guid: "jornal-jurid-#{entry.title.truncate(100)}")
          report = Report.new
          report.title = entry.title
          report.url = entry.url
          report.published_at = entry.published
          report.guid = "jornal-jurid-#{entry.title.truncate(100)}"
          report.save
        end
      end
    end
  end

  def self.update_tst_feed
    unless @@tst_feed == 200 || @@tst_feed == 500
      @@tst_feed = Feedzirra::Feed.update(@@tst_feed)
      @@tst_feed.new_entries.each do |entry|
        unless Report.find_by(title: entry.title)
          report = Report.new
          report.title = entry.title
          report.url = entry.url
          report.published_at = entry.published
          report.save
        end
      end
    end
  end
end
