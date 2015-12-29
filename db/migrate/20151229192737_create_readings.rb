class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.integer :glucose_level
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
