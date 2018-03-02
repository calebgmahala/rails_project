class User < ApplicationRecord
	validates :username, presence: true
	validates :password, presence: true
	validates :team, presence: true
	validates :permission, presence: true
	has_secure_password
end
