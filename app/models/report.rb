class Report < ActiveRecord::Base
  TST_FEED = 'http://www.tst.jus.br/noticias/-/journal/rss/57294?doAsGroupId=10157&refererPlid=10730&_15_groupId=10157'

  validates :title, presence: true
  validates :url,   presence: true, format: /\Ahttps?:\/\/.+\z/
end
