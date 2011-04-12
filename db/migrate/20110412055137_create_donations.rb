class CreateDonations < ActiveRecord::Migration
  def self.up
    create_table :donations do |t|
      t.string :donor_email
      t.string :donor_name
      t.string :payment_type
      t.string :card_number
      t.integer :donated_amount

      t.timestamps
    end
  end

  def self.down
    drop_table :donations
  end
end
