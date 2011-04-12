class CreateRequests < ActiveRecord::Migration
  def self.up
    create_table :requests do |t|
      t.string :title
      t.integer :pledged_amount
      t.date :deadline
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :requests
  end
end
