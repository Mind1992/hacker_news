class AddTimestamps < ActiveRecord::Migration
  def change
    add_timestamps(:links)
  end
end
