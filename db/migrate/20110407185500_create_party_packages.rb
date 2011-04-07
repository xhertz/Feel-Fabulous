class CreatePartyPackages < ActiveRecord::Migration
  def self.up
    create_table :party_packages do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :party_packages
  end
end
