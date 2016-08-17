class Tweet < ApplicationRecord
  # Associations
  belongs_to :user

  # Validates tweet
  validates :user, :status, presence: true
  validates :status, length: { maximum: 140 }
end
