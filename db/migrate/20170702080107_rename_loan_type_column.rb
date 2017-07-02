class RenameLoanTypeColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :loans, :type, :loan_type
  end
end
