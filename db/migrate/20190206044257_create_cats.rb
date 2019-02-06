class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :cat_breed
      t.integer :weight
      t.integer :life_exp
      t.string :country
      t.string :coat

      t.timestamps
    end
  end
end
