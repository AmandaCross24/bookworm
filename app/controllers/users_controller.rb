class UsersController < ApplicationController
layout 'users'

  def index
    @users = User.all
    if @users.present?
      flash[:notice] = "Here is a list of all Users."
    else
      flash[:alert] = "Sorry, there were no users to display."
  end
end

  def create
  @user = User.create(user_params)

if
   @user = User.new(user_params)
   @user.save!

      flash[:notice] = "Your account was created successfully.  You have been logged in."
    
       redirect_to user_path(@user)
      # flash[:alert] = "There was a problem creating your account."
    else 
    
      flash[:alert] = "Please enter the required information in the fields."
end
  end


  def new
    @user = User.new
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(user_params)
      flash[:notice] = "Your account was successfully updated."
      redirect_to user_path(@user)
      else
      flash[:alert] = "There was a problem updating your account."
        render 'edit'
  end
end

  def show
    @user = User.find_by(params[:current_user])
   
   

end

  def account
  @user = current_user

end

  def destroy
       puts "PARAMS ARE " + params.inspect
       @user = User.find(params[:id])
      if @user.destroy
      flash[:notice] = "Your account was successfully deleted."
      redirect_to root_path
      else
        flash[:alert] = "There was a problem deleting your account."
        redirect_to user_path(@user)
      end
    end
 

     private


  # def current_user
  #   @user = User.find(params[:id])
  # end



  def user_params
   params.require(:user).permit(:fname, :lname, :username, :email, :password, :parent, :students_first_name, :students_last_name, :teacher_name)
     end
end
