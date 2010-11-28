class RemoveLnameFromSpeaker < ActiveRecord::Migration
  def self.up
    remove_column :speakers, :lname
  end

  def self.down
    add_column :speakers, :lname, :string
  end
end
