class Athlete < ActiveRecord::Base
    has_many :active_event_entrants, class_name:  "EventEntrant",
                                  foreign_key: "athlete_id",
                                  dependent:   :destroy
                                  
    has_many :events, through: :active_event_entrants, source: :event
end