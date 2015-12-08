class MeetScore < ActiveRecord::Base
    belongs_to :user, class_name: "User"
    belongs_to :league, class_name: "League"
    belongs_to :meet, class_name: "Meet"
end