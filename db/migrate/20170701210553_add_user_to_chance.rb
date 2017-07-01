class AddUserToChance < ActiveRecord::Migration[5.1]
  def change
    add_reference :chances, :user, foreign_key: true
  end
end
