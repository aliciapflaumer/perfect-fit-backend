# frozen_string_literal: true

class Workout < ApplicationRecord
  belongs_to :user
  # belongs_to :plan
  validates :name, :duration, :repetitions, presence: true
end
