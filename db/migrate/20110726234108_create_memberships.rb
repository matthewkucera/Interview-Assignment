class CreateMemberships < ActiveRecord::Migration
  def self.up
    add_column :items, :membership_type, :string
  end
end
