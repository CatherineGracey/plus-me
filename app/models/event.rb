class Event < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  has_many :attendees
end
