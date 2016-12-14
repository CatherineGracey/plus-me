class Event < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :title, presence: true
  validates :where, presence: true
  validates :start_time, presence: true
  has_many :attendees
end
