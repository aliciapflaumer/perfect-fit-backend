class PlanSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location, :difficulty, :user_id
end
