class ApplicationController < ActionController::Base
  # using devise, user must be logged in
  before_action :authenticate_user!
end
