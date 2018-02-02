class Dream < ApplicationRecord
  validates :content, :sleep_date, presence: true
  belongs_to :user
end
