class CreateCarSellings < ActiveRecord::Migration[5.2]
  def change
    create_table :car_sellings do |t|
      t.string :title
      t.text :rates
      t.text :details
      t.datetime :published_at

      t.timestamps
    end
  end
end
