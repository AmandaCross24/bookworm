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
      redirect_to new_student_path
  
  end
  end

  def new
    @student = Student.new
    @session = Session.new
  end

  def edit
  end

  def show
      @student = Student.find_by_id(params[:id])
  end


  def profile
      @student = Student.find_by_id(params[:id])
end


  def update
  end

def destroy
    puts "PARAMS ARE " + params.inspect
       @student = Student.find_by(fname: params[:fname])
       if @student.destroy
      flash[:notice] = "This student was successfully deleted."
      redirect_to students_path
    else 
      flash[:alert] = "There was a problem deleting this student"
    end
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
    params.require(:student).permit(:fname, :lname, :current_lexile_level, :current_guided_reading_level)
  end

end
