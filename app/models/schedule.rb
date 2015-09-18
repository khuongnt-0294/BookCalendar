class Schedule < ActiveRecord::Base
  belongs_to :user
  belongs_to :room

  validates :title, presence: true, length: {maximum: 150}
  validates :start_time, presence: true
  validates :finish_time, presence: true
  validates :description, presence: true, length: {maximum: 450} 
  validates :room, presence: true
  validates :user, presence: true

  scope :today_schedule, -> {where("start_time LIKE ?", "%#{Time.now.to_date.to_s}%")}

  # def as_json(options = {})  
  #  {  
  #   :id => self.id,  
  #   :title => self.title,  
  #   :description => self.description || "",  
  #   :start => starts_at.rfc822,  
  #   :end => ends_at.rfc822,
  #  }  
  # end 
end
