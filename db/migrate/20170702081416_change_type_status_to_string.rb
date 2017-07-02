class ChangeTypeStatusToString < ActiveRecord::Migration[5.1]
  def change
    change_column :loans, :status, :string
  end
end
