class Meet < ActiveRecord::Base
    has_many :events, dependent: :destroy
    has_many :active_athlete_selections, class_name: "AthleteSelection",
                                        foreign_key: "meet_id",
                                        dependent: :destroy
                                        
    validates_uniqueness_of :meet_name, scope: :start_date
end