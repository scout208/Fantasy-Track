class User < ActiveRecord::Base
    has_secure_password #if bcrypt installed
	before_save {|user| user.email = user.email.downcase }
	before_save :create_session_token
	validates :user_id, presence: true, length: {maximum: 50}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true,
		format: {with: VALID_EMAIL_REGEX},
		uniqueness: {case_sensitive: false}

	validates :password, presence: true, length: {minimum: 6}
	validates :password_confirmation, presence: true
	
	def create_session_token
		self.session_token = SecureRandom.url
	end
end
