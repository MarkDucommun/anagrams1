class AddColumn < ActiveRecord::Migration
  def change
    add_column :words, :length, :integer
  end
end
