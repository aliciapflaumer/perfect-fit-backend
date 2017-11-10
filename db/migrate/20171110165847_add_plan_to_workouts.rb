class AddPlanToWorkouts < ActiveRecord::Migration[5.1]
  def change
    add_reference :workouts, :plan, foreign_key: true
  end
end
