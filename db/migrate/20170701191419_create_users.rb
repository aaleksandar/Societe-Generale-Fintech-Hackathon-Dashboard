class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :client_id
      t.string :name
      t.string :surname
      t.date :birthdate

      t.timestamps
    end
  end
end
