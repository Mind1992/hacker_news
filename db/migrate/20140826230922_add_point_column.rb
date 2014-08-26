class AddPointColumn < ActiveRecord::Migration
  def change
    add_column :links, :point, :integer
  end
end
