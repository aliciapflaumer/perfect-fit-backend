# frozen_string_literal: true

class Workout < ApplicationRecord
  belongs_to :user, optional: true
  validates :name, presence: true
  validates :duration, presence: true
  validates :repetitions, presence: true
  validates :date, presence: true
end
