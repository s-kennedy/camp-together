class RenameEventsToTrips < ActiveRecord::Migration[5.0]
  def change
    rename_table :events, :trips
  end
end
