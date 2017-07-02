class CreateFactors < ActiveRecord::Migration[5.1]
  def change
    create_table :factors do |t|
      t.references :chance, foreign_key: true
      t.string :title
      t.integer :amount

      t.timestamps
    end
  end
end
