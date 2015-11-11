class Leaguemember < ActiveRecord::Base
    belongs_to :users
    belongs_to :leagues
end