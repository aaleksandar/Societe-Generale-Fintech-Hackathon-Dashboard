class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.integer :type
      t.date :purchase_date
      t.integer :status
      t.integer :amount
      t.date :repayment
      t.decimal :interest_rate
      t.decimal :administrative_cost

      t.timestamps
    end
  end
end
