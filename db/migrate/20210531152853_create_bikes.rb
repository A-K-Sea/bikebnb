class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.string :category
      t.string :brand
      t.integer :price_per_day
      t.string :status
      t.string :brake_type
      t.integer :number_of_gears
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
