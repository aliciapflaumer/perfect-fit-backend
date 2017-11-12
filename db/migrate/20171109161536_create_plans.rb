class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.string :name
      t.date :date
      t.string :location
      t.string :difficulty

      t.timestamps
    end
  end
end
