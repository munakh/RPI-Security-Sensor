require 'base64'

class FeedController < ApplicationController
  skip_before_action :verify_authenticity_token
  # def create
  #   @image = Base64.decode64(params[:image])
  #   redirect_to controller: 'feed', action: 'images'
  #   File.open('./public/image.png', 'wb+') do |f|
  #     f.write(Base64.decode64(params[:image]))
  #   end
  # end

  def create
    @image= Base64.decode64(params[:image])
  end

  def images
    @image
    render 'feed/images'
  end
end
