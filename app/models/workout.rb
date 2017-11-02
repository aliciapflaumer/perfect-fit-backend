# frozen_string_literal: true

class Workout < ApplicationRecord
  belongs_to :user
  validates :name, :duration, :repetitions, :date, presence: true
end
