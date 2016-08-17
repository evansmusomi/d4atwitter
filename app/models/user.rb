class User < ApplicationRecord
	# Associations
	has_many :tweets, dependent: :destroy

	# Validates user
	validates :user_name, length: { minimum: 2 }, presence: true,
	 uniqueness: { case_sensitive: false }
	validates :email, length: { minimum: 6 },
	 uniqueness: { case_sensitive: false }, presence: true
	validates :screen_name, length: { minimum: 2 }, presence: true
	validates :gender, inclusion: { in: ['male', 'female'] }
	validates :city, length: { minimum: 2}, allow_blank: true
	validate :user_is_not_too_young

	# Ensures user is age appropriate (at least 13 years)
	def user_is_not_too_young
		return if date_of_birth.nil?

		if date_of_birth < 13.years.ago(Date.today)
			true
		else
			errors.add(:date_of_birth, "cannot be less than 13 years ago")
			false
		end
	end
end
