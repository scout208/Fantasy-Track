class League < ActiveRecord::Base
    has_many :leaguemembers
    has_many :users, through: :leaguemembers
end