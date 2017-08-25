class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :edit, :update, :destroy]

  # GET /meetings
  # GET /meetings.json
  def index
    @meetings = Meeting.all
  end

  # GET /meetings/1
  # GET /meetings/1.json
  def show
    @meeting = set_meeting
    
  end

  # GET /meetings/new
  def new
    @meeting = Meeting.new
  end

  # GET /meetings/1/edit
  def edit
  end

  # POST /meetings
  # POST /meetings.json
  def create
    @meeting = Meeting.new(meeting_params)
    respond_to do |format|
      if @meeting.save
        format.html { redirect_to user_path(:current_user), notice: 'Meeting was successfully created.' }
        format.json { render :show, status: :created, location: @meeting }
      else
        format.html { render :new }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meetings/1
  # PATCH/PUT /meetings/1.json
  def update
    respond_to do |format|
      if @meeting.update(meeting_params)
        format.html { redirect_to @meeting, notice: 'Meeting was successfully updated.' }
        format.json { render :show, status: :ok, location: @meeting }
      else
        format.html { render :edit }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meetings/1
  # DELETE /meetings/1.json
#   def destroy
#  @meeting.destroy
#     respond_to do |format|
#       format.html { redirect_to user_path(:current_user), notice: 'Meeting was successfully destroyed.' }
#       format.json { head :no_content }
    
    
#       #  # @meeting = Meeting.find(params[:id])
#       #  @meeting = Meeting.find(params[:id])
#       # if @meeting.destroy
#       # flash[:notice] = "This meeting was successfully deleted."
#       # redirect_to user_path(:current_user)
#       # else
#       #   flash[:alert] = "There was a problem deleting this meeting."
    
#  end
# end

def destroy 

  puts "PARAMS ARE " + params.inspect
       @meeting = Meeting.find(params[:id])
      if @meeting.destroy
      flash[:notice] = "This student was successfully deleted."
      redirect_to user_path(current_user)
      else
        flash[:alert] = "There was a problem deleting this student."
        redirect_to user_path(@user)
  # puts "PARAMS ARE " + params.inspect
  #   @meeting = meeting_id
  #   @meeting.destroy 
  #   respond_to do |format|
  #     format.html { redirect_to user_path(current_user), notice: 'Meeting was successfully destroyed.' }
  #     format.json { head :no_content }
    
  #   flash[:notice] = "This meeting was successfully deleted."
  end
end


  private
    # Use callbacks to share common setup or constraints between actions.
     def current_user
      @user = User.find(params[:id])
    end

    def set_meeting
      @meeting = Meeting.find_by(id: params[:id])
      end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meeting_params
      params.require(:meeting).permit(:name, :start_time, :end_time)
    end
  end


