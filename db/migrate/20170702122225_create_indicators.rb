class CreateIndicators < ActiveRecord::Migration[5.1]
  def change
    create_table :indicators do |t|
      t.string :product
      t.string :name
      t.integer :score

      t.timestamps
    end
  end
end
