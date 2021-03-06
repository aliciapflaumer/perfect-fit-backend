# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :workouts
  has_many :plans
end
