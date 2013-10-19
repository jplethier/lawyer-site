class Report < ActiveRecord::Base
  TST_FEED = 'http://www.tst.jus.br/noticias/-/journal/rss/57294?doAsGroupId=10157&refererPlid=10730&_15_groupId=10157'

  validates :title, presence: true
  validates :url,   presence: true, format: /\Ahttps?:\/\/.+\z/

  def self.fetch_news(qty)
    news = []
    feed = Feedzirra::Feed.fetch_and_parse(TST_FEED)
    feed.entries.each do |entry|
      report = Report.new
      report.title = entry.title
      report.url = entry.url
      news << report if report.valid?
    end
    news = news[0..9] if news.size > 10
    news
  end
end
