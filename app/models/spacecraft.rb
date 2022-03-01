class Spacecraft < ApplicationRecord
  belongs_to :user


  has_many :bookings, dependent: :destroy

  validates :name, :capacity, :category, :location, :description, :user, presence: true
  validates :name, uniqueness: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
