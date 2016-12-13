class User < ApplicationRecord
  validates :email, uniqueness: true
  has_many :events
  has_many :attendees
end
