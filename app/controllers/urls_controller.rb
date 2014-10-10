class UrlsController < ApplicationController
  layout 'main'

  def hex_random_generator
    require 'SecureRandom'
    hex = SecureRandom.urlsafe_base64(3)
    # if hex is uniq
    # return hex
    # else
    # hex_random_generator
    # end
  end

  def new
    @shortened_url = Url.new
    @hex = hex_random_generator
  end

  def create
    @shortened_url = Url.new(url_params)
    if @shortened_url.save
      flash[:shortened_id] = @shortened_url.id
      redirect_to new_url_url
    else
      render :action => "new"
    end
  end

  def show
    # shortened_url = Url.find_by_shortened_url(shortened_url: params[:shortened_url]).first
    shortened_url = Url.find(params[:shortened_url])
    redirect_to shortened_url.url
  end

  private

  def url_params
    params.require(:url).permit(:url)
  end
end
