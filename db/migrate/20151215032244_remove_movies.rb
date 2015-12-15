class RemoveMovies < ActiveRecord::Migration
  def up
  end
  def down
    drop_table :movies
  end
end
