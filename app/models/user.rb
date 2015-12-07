class User < ActiveRecord::Base
  attr_accessor :remember_token
  has_many :active_league_memberships, class_name:  "LeagueMember",
                                  foreign_key: "user_id",
                                  dependent:   :destroy
  has_many :leagues, through: :active_league_memberships, source: :league
  has_many :league_messages
  has_many :active_athlete_selections, class_name: "AthleteSelection",
                                    foreign_key: "user_id",
                                    dependent: :destroy
  
  attr_accessor :remember_token
  
	
	before_create :confirmation_token
	
	
	before_validation :prep_email
	     
	    def email_activate
	      self.email_confirmed = true
	      self.confirm_token = nil
	      save!(:validate => false)
    	end
    	
	
	validates :user_id, presence: true, length: {maximum: 50},
											uniqueness: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
										format: {with: VALID_EMAIL_REGEX},
										uniqueness: {case_sensitive: false}
  has_secure_password
  
  validates :password, :on => :create, presence: true,length: {minimum: 6}
	
	
	
	class << self
    # Returns the hash digest of the given string.
    def digest(string)
      cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                    BCrypt::Engine.cost
      BCrypt::Password.create(string, cost: cost)
    end
    
    # Returns a random token.
    def new_token
      SecureRandom.urlsafe_base64
    end
    
	end
	def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end
  
  # Returns true if the given token matches the digest.
  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end
  
  # Forgets a user.
  def forget
    update_attribute(:remember_digest, nil)
  end
  
  private 
  
  def prep_email
    self.email = self.email.strip.downcase if self.email
  end
  
  def confirmation_token
    if self.confirm_token.blank?
      self.confirm_token = SecureRandom.urlsafe_base64.to_s
    end
  end
  
  
end
