class Plan < ApplicationRecord
  belongs_to :user
  validates :name, :date, :location, :difficulty, presence: true
end
