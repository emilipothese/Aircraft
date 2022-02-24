class Booking < ApplicationRecord
  belongs_to :spacecraft
  belongs_to :user
end
