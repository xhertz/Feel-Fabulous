class AddPositionToPartyPackages < ActiveRecord::Migration
  def self.up
    add_column :party_packages, :position, :integer
  end

  def self.down
    remove_column :party_packages, :position
  end
end
