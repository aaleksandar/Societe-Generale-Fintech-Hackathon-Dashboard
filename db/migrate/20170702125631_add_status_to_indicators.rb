class AddStatusToIndicators < ActiveRecord::Migration[5.1]
  def change
    add_column :indicators, :status, :string
  end
end
