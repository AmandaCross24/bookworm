class SessionsController < ApplicationController

  def index
  end

  # def new
  # @session = Session.new
  # @user = current_user
  # end

def login
  

  @user = User.find_by(:id params[:id])

end

#  def create
#   @user = User.where(email: params[:email]).first

# end

def create
  session_id = current_user
  # @session = Session.create(session_params)
   flash[:notice] = "You have logged in successfully."
  redirect_to user_path(@user)
 # session[:current_user_id] = @user.id
  
end


def new 
  # @session = Session.new
  # @user = current_user
  flash[:notice] = "You have logged in successfully."
  redirect_to user_path(@user)
 
   
end
# def signin 
#   @user = current_user
# end

def see_profile
  @user = User.where(email: params[:email]).first
  session[:user_id] = @user.id
  flash[:notice] = "You have logged in successfully."
  redirect_to user_path(@user)
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




  def destroy
    session_id = nil
    flash[:notice] = "You have logged out successfully"
    
  end


private 

def current_user 
 
  @current_user = User.find(session[:id])


  
end

def session_params
    params.require(:session).permit( :id)
  end
end