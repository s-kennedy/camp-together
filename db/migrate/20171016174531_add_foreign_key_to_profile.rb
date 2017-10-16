class AddForeignKeyToProfile < ActiveRecord::Migration[5.0]
  def change
    add_reference :profiles, :user, index:true
    add_foreign_key :profiles, :users
  end
end
