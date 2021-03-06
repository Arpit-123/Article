class User < ApplicationRecord
	before_save { self.email = email.downcase }
	validates :name, presence: true, length: {maximum: 10}
	validates :email, presence:true, length: {maximum: 15}, uniqueness: {case_sensitive: false}

		has_secure_password
end
