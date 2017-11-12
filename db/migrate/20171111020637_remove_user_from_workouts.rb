class RemoveUserFromWorkouts < ActiveRecord::Migration[5.1]
  def change
    remove_reference :workouts, :user, foreign_key: true
  end
end
