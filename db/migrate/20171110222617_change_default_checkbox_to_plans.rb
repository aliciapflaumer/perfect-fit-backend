class ChangeDefaultCheckboxToPlans < ActiveRecord::Migration[5.1]
  def change
    change_column :plans, :checkbox, :boolean
  end
end
