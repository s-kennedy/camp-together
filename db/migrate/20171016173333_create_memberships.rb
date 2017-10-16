class CreateMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :memberships do |t|
      t.belongs_to :user, index: true
      t.belongs_to :trip, index: true
      t.boolean :organizer, index: true
      t.timestamps
    end
  end
end
