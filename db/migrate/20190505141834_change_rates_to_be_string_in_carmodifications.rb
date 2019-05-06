class ChangeRatesToBeStringInCarmodifications < ActiveRecord::Migration[5.2]
  def change
    change_column :car_modifications, :rates, :string

  end
end
