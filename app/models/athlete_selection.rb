class AthleteSelection < ActiveRecord::Base
    belongs_to :user, class_name: "User"
    belongs_to :league, class_name: "League"
    belongs_to :meet, class_name: "Meet"
    belongs_to :athlete, class_name: "Athlete"
    belongs_to :event, class_name: "Event"
    
    attr_accessor :selected
    
end