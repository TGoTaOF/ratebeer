class ApplicationController < ActionController::Base
  helper_method :current_user

  def ensure_that_signed_in
    redirect_to signin_path, notice: 'you should be signed in' if current_user.nil?
  end

  def ensure_that_signed_in_is_admin
    redirect_to current_user, notice: 'you should be admin for this' if !current_user.admin
  end

  def current_user
    return nil if session[:user_id].nil?

    User.find_by id: session[:user_id]
  end
end
