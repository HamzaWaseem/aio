class ChangeRatesToBeStringInCarwashes < ActiveRecord::Migration[5.2]
  def change
    change_column :car_washes, :rates, :string

  end
end
