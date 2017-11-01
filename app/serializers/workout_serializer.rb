class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :duration, :repetitions, :date
end
