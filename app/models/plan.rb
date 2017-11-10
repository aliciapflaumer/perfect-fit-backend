class Plan < ApplicationRecord
  belongs_to :user
  validates :name, :date, :location, :difficulty, :checkbox, presence: true
end
