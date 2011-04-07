class AddSuitedFieldToPartyPackages < ActiveRecord::Migration
  def self.up
    add_column :party_packages, :suitedfor, :string
  end

  def self.down
    remove_column :party_packages, :suitedfor
  end
end
