class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.number :duration
      t.number :repetitions
      t.date :date

      t.timestamps
    end
  end
end
