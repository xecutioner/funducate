class AddRequestIdToComment < ActiveRecord::Migration
  def self.up
    add_column :comments, :request_id, :integer
  end

  def self.down
    remove_column :comments, :request_id
  end
end
