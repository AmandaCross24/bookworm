class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

# helper_method :current_user, :logged_in?, :session_id






# def current_user
#    @user = User.find(params[:id])
#    session[:id] = @user.id
# end



# def meeting_id
# 	@meeting = Meeting.find_by_id(params[:id])
# end 




  def logged_in?
       current_user != nil
  end

  protect_from_forgery with: :exception
end
