class ChangeRatesToBeStringInCarsellings < ActiveRecord::Migration[5.2]
  def change
    change_column :car_sellings, :rates, :string

  end
end
