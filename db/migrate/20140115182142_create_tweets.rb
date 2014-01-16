class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :status
      t.references :zombie, index: true

      t.timestamps
    end
  end
end
