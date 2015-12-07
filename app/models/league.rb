class League < ActiveRecord::Base
    has_many :active_league_memberships, class_name:  "LeagueMember",
                                  foreign_key: "league_id",
                                  dependent:   :destroy
                             
    has_many :active_athlete_selections, class_name: "AthleteSelection",
                                        foreign_key: "league_id",
                                        dependent: :destroy
                                        
    has_many :league_settings, dependent: :destroy
    
                                  
    has_many :members, through: :active_league_memberships, source: :user
    
    has_many :league_messages, dependent: :destroy
    
    validates :league_name, presence: true, length: {maximum: 64},
											uniqueness: true
											
	
	
 def self.search(search)
   if search
     find(:all, :conditions => ['name LIKE ?', "#{search}"])
   else
     find(:all)
   end
 end
end