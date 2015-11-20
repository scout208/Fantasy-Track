class League < ActiveRecord::Base
    has_many :active_league_memberships, class_name:  "LeagueMember",
                                  foreign_key: "league_id",
                                  dependent:   :destroy
                                  
    has_many :members, through: :active_league_memberships, source: :user
    
    validates :league_name, presence: true, length: {maximum: 64},
											uniqueness: true
											
	
	
 def self.search(search)
   if search
     find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
   else
     find(:all)
   end
 end
end