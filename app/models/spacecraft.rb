class Spacecraft < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  has_many :bookings, dependent: :destroy

  validates :name, :capacity, :category, :location, :description, :user, presence: true
  validates :name, uniqueness: true
end
