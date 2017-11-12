class Plan < ApplicationRecord
  belongs_to :user
  validates :name, :date, :location, :difficulty, :user_id, presence: true
end
