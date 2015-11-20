class LeagueMember < ActiveRecord::Base
    belongs_to :league, class_name: "League"
    belongs_to :user, class_name: "User"
    
    validates_uniqueness_of :user_id, scope: :league_id
end
