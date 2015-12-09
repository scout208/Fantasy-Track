class Athlete < ActiveRecord::Base
    has_many :active_event_entrants, class_name:  "EventEntrant",
                                  foreign_key: "athlete_id",
                                  dependent:   :destroy
                                  
    has_many :active_sprint_results, class_name: "SprintResult",
                                    foreign_key: "athlete_id",
                                    dependent: :destroy
                                    
    has_many :active_mid_results, class_name: "MidResult",
                                foreign_key: "athlete_id",
                                dependent: :destroy
                                
    has_many :active_throw_results, class_name: "ThrowResult",
                                    foreign_key: "athlete_id",
                                    dependent: :destroy
                                    
    has_many :active_jump_results, class_name: "JumpResult",
                                    foreign_key: "athlete_id",
                                    dependent: :destroy
                                    
    has_many :active_athlete_selections, class_name: "AthleteSelection",
                                        foreign_key: "athlete_id",
                                        dependent: :destroy                                
                                    
    has_many :events, through: :active_event_entrants, source: :event
    
    validates_uniqueness_of :last_name, scope: :first_name
    
    def selected 
        
        @selected
    end
    
    def selected= val
        
        @selected = val
    end
end