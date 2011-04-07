class AddFieldsToPartyPackages < ActiveRecord::Migration
  def self.up
    add_column :party_packages, :addendum, :string
    add_column :party_packages, :price, :string
    add_column :party_packages, :grouprate, :string
    add_column :party_packages, :groupsize, :string
    add_column :party_packages, :details, :text
  end

  def self.down
    remove_column :party_packages, :details
    remove_column :party_packages, :groupsize
    remove_column :party_packages, :grouprate
    remove_column :party_packages, :price
    remove_column :party_packages, :addendum
  end
end
