class User < ApplicationRecord
	validates :password, presence: true, length: {within: 6..40}
	validates :username, presence: true
	validates :team, presence: true
	validates :permission, presence: true
end
