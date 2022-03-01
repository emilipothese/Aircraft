class Review < ApplicationRecord
  belongs_to :spacecraft

  validates :content, presence: true
end
