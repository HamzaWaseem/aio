class CreateCarWashes < ActiveRecord::Migration[5.2]
  def change
    create_table :car_washes do |t|
      t.string :title
      t.text :rates
      t.text :body
      t.datetime :published_at

      t.timestamps
    end
  end
end
