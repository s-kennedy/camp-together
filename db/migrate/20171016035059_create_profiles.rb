class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.text :description
      t.boolean :first_aid
      t.boolean :wilderness_first_aid
      t.boolean :previous_trips
      t.integer :age
      t.string :gender
      t.text :training
      t.string :city
      t.string :favourite_park

      t.timestamps
    end
  end
end
