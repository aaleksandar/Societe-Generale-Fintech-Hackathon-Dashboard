class CreateChances < ActiveRecord::Migration[5.1]
  def change
    create_table :chances do |t|
      t.integer :kredit_kes
      t.integer :kredit_refinansiranje
      t.integer :kredit_stambeni
      t.integer :kredit_auto
      t.integer :kredit_evergrin
      t.integer :kredit_fluo
      t.integer :kredit_potrosacki

      t.timestamps
    end
  end
end
