class User < ApplicationRecord
	# Associations
	has_many :tweets, dependent: :destroy
end
