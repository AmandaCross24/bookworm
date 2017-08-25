class Meeting < ActiveRecord::Base
belongs_to :user






extend SimpleCalendar
    belongs_to :calendar 
    has_many :dates


 #    def start_time
 #   self.Meeting.start_date.to_datetime
 # end

 # def end_time
 #   self.Meeting.end_date.to_datetime
 # end

   

 

    
# def start_time 
# 	self.User.start
# end

 # def end_time
 #   self.meeting.end_date
 # end


 # def start_time
 #        self.user.start ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
 #    end

end
