class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.string :url
      t.datetime :datetime
      t.belongs_to :user
    end
  end
end
