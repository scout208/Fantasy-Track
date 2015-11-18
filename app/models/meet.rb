class Meet < ActiveRecord::Base
    has_many :events, dependent: :destroy
    validates_uniqueness_of :meet_name, scope: :start_date
end