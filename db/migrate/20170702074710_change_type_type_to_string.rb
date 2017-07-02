class ChangeTypeTypeToString < ActiveRecord::Migration[5.1]
  def change
    change_column :loans, :type, :string
  end
end
