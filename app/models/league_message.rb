class LeagueMessage < ActiveRecord::Base
  belongs_to :league
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :league_id, presence: true
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }

end
