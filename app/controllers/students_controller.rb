class StudentsController < ApplicationController
  def index
    @student = Student.all
  end

     def create
  @student = Student.new(student_params)
    if @student.save 
      flash[:notice] = "You have successfully created a new student."
      redirect_to students_path
    else
      flash[:alert] = "There was a problem creating a student.  Please try again"
      redirect_to new_book_path
  
  end
  end

  def new
    @student = Student.new
  end

  def edit
  end

  def show
    @student = Student.all
  end

  def update
  end

def destroy
 
end
     
#      if Student.destroy(@student)
#       flash[:notice] = "This student was successfully deleted."
#       redirect_to students_path
#       else 
#         flash[:alert] = "There was a problem deleting this student"
#         redirect_to students_path

# end
# end  

private

def student_params
    params.require(nil).permit(:fname, :lname, :current_lexile_level, :current_guided_reading_level)
  end

end
