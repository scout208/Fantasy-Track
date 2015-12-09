class AthleteSelection < ActiveRecord::Base
    belongs_to :user, class_name: "User"
    belongs_to :league, class_name: "League"
    belongs_to :meet, class_name: "Meet"
    belongs_to :event_entrant, class_name: "EventEntrant"
    
    
    def selected
        
    end
    
    def selected=val
        @selected=val
    end
end