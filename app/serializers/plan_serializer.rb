class PlanSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :location, :difficulty, :checkbox
end
