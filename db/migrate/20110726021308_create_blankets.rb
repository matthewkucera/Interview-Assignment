class CreateBlankets < ActiveRecord::Migration
  def self.up
    add_column :items, :material, :string
  end
end
