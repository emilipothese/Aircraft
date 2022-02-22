class Spacecraft < ApplicationRecord
  belongs_to :user

  validates :name, :capacity, :category, :location, :description, :user, presence: true
  validates :name, uniqueness: true
end
