class AddRequestIdToDonation < ActiveRecord::Migration
  def self.up
    add_column :donations, :request_id, :integer
  end

  def self.down
    remove_column :donations, :request_id
  end
end
