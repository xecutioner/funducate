class AddPersonIdToRequest < ActiveRecord::Migration
  def self.up
    add_column :requests, :person_id, :integer
  end

  def self.down
    remove_column :requests, :person_id
  end
end
