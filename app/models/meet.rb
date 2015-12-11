class Meet < ActiveRecord::Base
    has_many :events, dependent: :destroy
    has_many :active_athlete_selections, class_name: "AthleteSelection",
                                        foreign_key: "meet_id",
                                        dependent: :destroy
    
    has_many :active_meet_scores, class_name: "MeetScore",
                                    foreign_key: "meet_id",
                                    dependent: :destroy
                                    
    validates_uniqueness_of :meet_name, scope: :start_date
    
    def scores
        @scores
    end
    
    def scores= vals
        @scores = vals
    end
        
end