class ApplicationController < ActionController::Base
  include ApplicationHelper
  include SessionsHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate
  skip_before_action :authenticate, only: [:index]

end
