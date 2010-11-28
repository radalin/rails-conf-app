class ChangeStartdateTypeSessions < ActiveRecord::Migration
  def self.up
    change_column :sessions, :start_date, 'time'
  end
  def self.down
    change_column :sessions, :start_date, 'date'
  end
end
