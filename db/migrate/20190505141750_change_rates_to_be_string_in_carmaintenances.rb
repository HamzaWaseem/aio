class ChangeRatesToBeStringInCarmaintenances < ActiveRecord::Migration[5.2]
  def change
    change_column :car_maintenances, :rates, :string
  end
end
