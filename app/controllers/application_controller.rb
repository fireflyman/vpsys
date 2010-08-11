# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  before_filter :set_current_user
  
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  include AuthenticatedSystem
  helper_method :current_user, :logged_in?
  # Scrub sensitive parameters from your log
   filter_parameter_logging :password, :password_confirmation
  
  protected
     def set_current_user
        Authorization.current_user = current_user
     end

end
