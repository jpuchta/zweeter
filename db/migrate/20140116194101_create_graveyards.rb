class CreateGraveyards < ActiveRecord::Migration
  def change
    create_table :graveyards do |t|
      t.string :name
      t.integer :capacity

      t.timestamps
    end
  end
end
