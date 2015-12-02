class Event < ActiveRecord::Base
    belongs_to :meet
    
    has_many :active_event_entrants, class_name:  "EventEntrant",
                                  foreign_key: "event_id",
                                  dependent:   :destroy
                                  
    has_many :active_sprint_results, class_name: "SprintResult",
                                    foreign_key: "event_id",
                                    dependent: :destroy
                                    
    has_many :active_mid_results, class_name: "MidResult",
                                    foreign_key: "event_id",
                                    dependent: :destroy
                                    
    has_many :active_throw_results, class_name: "ThrowResult",
                                    foreign_key: "event_id",
                                    dependent: :destroy
                                    
    has_many :active_jump_results, class_name: "JumpResult",
                                    foreign_key: "event_id",
                                    dependent: :destroy
                                  
    has_many :entrants, through: :active_event_entrants, source: :athlete
end