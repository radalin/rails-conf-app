class ChangeFnameToNameSpeaker < ActiveRecord::Migration
  def self.up
    rename_column :speakers, :fname, :name
  end

  def self.down
    rename_column :speakers, :name, :fname
  end
end
