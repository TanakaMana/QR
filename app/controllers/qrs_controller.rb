class QrsController < ApplicationController
  before_action :set_url, only: :create
  der index
  end

  def create
    @qr = QrcodeServise.new.create_qr(@url)
  end

  private
  def set_url
    @url = params[:url]
  end
end
