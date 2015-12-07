class EventEntrant < ActiveRecord::Base
    belongs_to :event, class_name: "Event"
    belongs_to :athlete, class_name: "Athlete"
    
    has_many :active_athlete_selections, class_name: "AthleteSelection",
                                        foreign_key: "event_entrant_id",
                                        dependent: :destroy
                                        
end
