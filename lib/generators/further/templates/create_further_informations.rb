class CreateFurtherInformations < ActiveRecord::Migration
  def change
    create_table :further_informations do |t|
      t.references :furtherable, polymorphic: true
      t.text :info

      t.timestamps
    end
    add_index :further_informations, :furtherable_id
    add_index :further_informations, :furtherable_type
  end
end
