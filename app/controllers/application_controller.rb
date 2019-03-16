class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  private
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end
  def after_sign_in_path_for(resource_or_scope)
    admin_dashboard_path
  end
end

#  Overwriting the sign_out redirect path method
#   def after_sign_out_path_for(resource_or_scope)
#     if resource_or_scope == :user
#       new_user_session_path
#     elsif resource_or_scope == :admin
#       new_admin_session_path
#     else
#       root_path
#     end
#   end