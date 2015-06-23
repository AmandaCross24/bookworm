class UsersController < ApplicationController

 # layout 'users'

  def index
    @user = User.all
  end

  def create
  @user = User.new(user_params)
    if @user.save 
      flash[:notice] = "Your account was created successfully.  Please log in."
      redirect_to session_path(@user)
    else
      flash[:alert] = "There was a problem creating your account."
      redirect_to new_user_path

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
      redirect_to session_path(@user)
      else
      flash[:alert] = "There was a problem updating your account."
        render 'edit'
  end
end

  def show
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
        redirect_to user_path
  end
end

     private


  def current_user
    @user = User.find(params[:id])
  end


  def user_params
    params.require(:user).permit(:username, :email, :password, :avatar, :students_first_name, :students_last_name)
  end

end
