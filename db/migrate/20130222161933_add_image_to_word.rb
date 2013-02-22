class AddImageToWord < ActiveRecord::Migration
  def self.up
    add_attachment :words, :image
  end

  def self.down
    remove_attachment :words, :image
  end
end
