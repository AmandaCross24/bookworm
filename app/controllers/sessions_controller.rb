class SessionsController < ApplicationController

  def new
    @session = Session.new
    @user = User.where(email: params[:email]).first
  end


 def create
  @session = Session.new(user_params)
  @user = User.where(email: params[:email]).first
  if @user && @user.password == params[:password]
  session[:user_id] = @user.id
  flash[:notice] = "You have logged in successfully."
  redirect_to session_path(@user)
  else
    flash[:alert] = "There was a problem logging in."
    redirect_to new_session_path
  end
end


 # @user = User.where(email: params[:email]).first
 #    if @user && @user.password == params[:password]
 #      session[:user_id] = @user.id
 #      flash[:notice] = "You have logged in successfully"
 #      redirect_to session_path(@user)
 #    else
 #      flash[:alert] = "There was a problem logging in"
 #      redirect_to new_session_path
 #  end
#   end
# end



#    if @user && @user.password == params[:password] &&
#       @user && @user.username == params[:username]

#       session[:user_id] = @user.id
#       flash[:notice] = "You have logged in successfully"
#       redirect_to session_path(@user)

#     elsif @user == nil

#       flash[:alert] = "Fields cannot be left blank.  Please try again"
#       redirect_to new_session_path  
  		
#     elsif @user.password == nil ||
#           @user.username == nil
    
#       flash[:alert] = "Fields cannot be left blank.  Please try again"
#       redirect_to new_session_path 


#     elsif    @user.email != params[:email] 
          
#       flash[:notice] = "We have no record of that account. Please create an account."
#       redirect_to new_session_path  

# elsif 
#           @user.username != nil || params[:username] &&
#           @user.password != nil || params[:password] 


#       flash[:notice] = "Your username or password did not match your email account. Please try again."
#       redirect_to new_session_path

#     else
#       flash[:alert] = "There was a problem logging in."
#       redirect_to new_session_path      



  def show
    @session = Session.new
    @user = User.find(params[:id])
  	
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have logged out successfully"
    redirect_to root_path
  end
end
private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end


