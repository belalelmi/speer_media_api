class Tweet < ApplicationRecord
  belongs_to :user

  default_scope -> { order(created_at: :desc) }

  validates :tweet, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
end
