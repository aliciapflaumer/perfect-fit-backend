class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.numeric :duration
      t.numeric :repetitions
      t.date :date

      t.timestamps
    end
  end
end
