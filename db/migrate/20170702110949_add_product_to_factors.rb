class AddProductToFactors < ActiveRecord::Migration[5.1]
  def change
    add_column :factors, :product, :string
  end
end
