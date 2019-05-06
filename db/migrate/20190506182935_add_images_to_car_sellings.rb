class AddImagesToCarSellings < ActiveRecord::Migration[5.2]
  def change
    add_column :car_sellings, :image,:string
  end
end
