class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :link_id
      t.integer :point_amount
    end
    remove_column :links, :point, :integer
  end
end
