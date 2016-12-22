class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  layout 'admin_lte_2'

  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :danger
end
