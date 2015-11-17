class Event < ActiveRecord::Base
    belongs_to :meet
    has_many :active_event_entrants, class_name:  "EventEntrant",
                                  foreign_key: "event_id",
                                  dependent:   :destroy
                                  
    has_many :entrants, through: :active_event_entrants, source: :athlete
end