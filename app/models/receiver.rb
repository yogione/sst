class Receiver < ActiveRecord::Base
    has_and_belongs_to_many :messages
    validates_presence_of :name
    validates_presence_of :phone
    validates_presence_of :timezone
    
    validates_uniqueness_of :phone

    attr_accessible :name, :phone, :timezone
    
    TIMES1 = ["6:00 AM", "6:30 AM", "7:00 AM", "7:30 AM", "8:00 AM", "8:30 AM", "9:00 AM", "9:30 AM", "10:00 AM",
      "10:30 AM", "11:00 AM", "11:30 AM", "12:00 Noon", "12:30 PM", "1:00 PM", "1:30 PM", "2:00 PM", "2:30 PM", "3:00 PM", "3:30 PM", "4:00 PM", "4:30 PM", "5:00 PM",
      "5:30 PM"]
    
    def rec_times
      return Receiver::TIMES1
    end

end
