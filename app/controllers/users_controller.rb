class UsersController < ApplicationController


  def index
    @users = User.all
    if @users.present?
      flash[:notice] = "Here is a list of all Users."
    else
      flash[:alert] = "Sorry, there were no users to display."
  end
end

  def create
  @user = User.new(user_params)
    if @user.save 
      flash[:notice] = "Your account was created successfully.  Please log in."
      redirect_to user_path(@user)
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
      redirect_to user_path(@user)
      else
      flash[:alert] = "There was a problem updating your account."
        render 'edit'
  end
end

  def show
@user = User.find(params[:id])
  end

  def account
  @user = User.find(params[:id])
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


  def current_user
    @user = User.find(params[:id])
  end


  def user_params
    params.require(:user).permit(:fname, :lname, :parent, :username, :email, :password, :avatar, :students_first_name, :students_last_name, :teacher_name)
  end
end

# end
