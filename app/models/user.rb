class User < ApplicationRecord
	# Associations
	has_many :tweets
end
