class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   before_action :first_time_visit, unless: -> { cookies[:first_visit] }

   def first_time_visit
    cookies.permanent[:first_visit] = 1
    @first_visit = true
  end
  @email = Email.new
  protected
    def after_sign_in_path_for(resource)
      request.env['omniauth.origin'] || stored_location_for(resource) || admin_path
    end
end
