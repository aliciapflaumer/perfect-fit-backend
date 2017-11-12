class RemoveDateFromWorkouts < ActiveRecord::Migration[5.1]
  def change
    remove_column :workouts, :date, :datatype
  end
end
