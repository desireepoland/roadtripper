class AddIndexToStops < ActiveRecord::Migration
  def change
    add_index :stops, :trip_id
  end
end
