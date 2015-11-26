class AddIndextoActivities < ActiveRecord::Migration
  def change
    add_index :activities, :stop_id
  end
end
