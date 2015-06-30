class BooksController < ApplicationController
  

  def index
    @book = Book.all
  end

  def create
  @book = Book.new(book_params)
    if @book.save 
      flash[:notice] = "You have successfully created a new book."
      redirect_to books_path
    else
      flash[:alert] = "Your book was not created.  Please try again"
      redirect_to new_book_path
    end
  end


  def new
    @book = Book.new
  end

  def edit
    current_book
  end

  def update
    @book = current_book
    if @book.update_attributes(book_params)
      flash[:notice] = "Your book was successfully updated."
      redirect_to session_path(@user)
      else
      flash[:alert] = "There was a problem updating your account."
        render 'edit'
  end
end

  def show
    @user = User.find(params[:id])
  
  end

  def destroy
       puts "PARAMS ARE " + params.inspect
       @book = Book.find(params[:id])
      if @book.destroy
      flash[:notice] = "You have successfully deleted this book."
      redirect_to root_path
      else
        flash[:alert] = "There was a problem deleting this book."
        redirect_to user_path
  end
end

     private


  def current_book
    @book = Book.find(params[:id])
  end


  def book_params
    params.require(:book).permit(:title, :author, :lexile_level, :guided_reading_level)
  end
end