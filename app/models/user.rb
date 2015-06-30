

class User < ActiveRecord::Base
has_many :students
has_many :books
has_one :session
belongs_to :session
# accepts_nested_attributes_for :session, allow_destroy: true

# accepts_nested_attributes_for :students, :reject_if => :all_blank, :allow_destroy => true
 #has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  #validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end

