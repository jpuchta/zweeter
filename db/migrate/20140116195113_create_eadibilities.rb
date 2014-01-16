class CreateEadibilities < ActiveRecord::Migration
  def change
    create_table :eadibilities do |t|
      t.string :name
      t.integer :quantity
      t.string :taste
      t.references :graveyard, index: true

      t.timestamps
    end
  end
end
