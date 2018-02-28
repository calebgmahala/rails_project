class User < ApplicationRecord
	validates :password, presence: true, length: {within: 6..40}
	validates :username, presence: true
	validates :team, presence: true
	validates :permission, presence: true

	after_initialize :set_permission

	def authenticate(provided_password)
		self.password == provided_password
	end
	def set_permission
		self.permission ||= 2
	end
end
