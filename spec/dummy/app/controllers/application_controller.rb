class ApplicationController < ActionController::Base
  include ::Binda::DefaultHelpers
  protect_from_forgery with: :exception
end
