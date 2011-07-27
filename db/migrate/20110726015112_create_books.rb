class CreateBooks < ActiveRecord::Migration
  def self.up    
    add_column :items, :author, :string
    add_column :items, :type, :string
  end
end
