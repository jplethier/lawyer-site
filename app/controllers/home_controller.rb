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

  def send_contact_email
    FaqMailer.contact_us(params[:name], params[:email], params[:subject], params[:message]).deliver
    redirect_to contact_path, success: 'Mensagem enviada com sucesso. Entraremos em contato em breve.'
  end
end
