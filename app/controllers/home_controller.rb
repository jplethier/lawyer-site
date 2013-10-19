class HomeController < ApplicationController
  def index
    @reports = Report.fetch_news(5)
  end

  def practice_areas

  end

  def about

  end

  def contact

  end
end
