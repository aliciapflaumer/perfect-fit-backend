class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :duration, :repetitions, :plan_id
end
