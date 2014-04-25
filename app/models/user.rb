# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email_address   :string(255)      not null
#  password_digest :string(255)      not null
#  session_token   :string(255)      not null
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base

	before_validation :ensure_session_token
	validates :email, uniqueness: true, presence: true
	validates :session_token, presence: true
	#add password length validation later
	
	def self.generate_session_token
		SecureRandom::urlsafe_base64(16)
	end 

	def self.reset_session_token!
		self.session_token = self.generate_session_token
		self.save!
	end

	def password=(plain_text)
		password_hash = BCrypt::Password.create(plain_text)
		self.password_digest = password_hash
	end

	def is_password?(plain_text)
		password_hash = self.password_digest
		BCrypt::Password.new(self.password_digest).is_password?(plain_text)
	end

	def self.find_by_credentials(email, secret) 
		user = self.find_by_email(email)
		user.is_password?(secret) ?  user : nil
	end 

	private

	def ensure_session_token
		self.session_token ||= self.class.generate_session_token
	end

end
