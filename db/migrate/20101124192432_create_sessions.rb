class CreateSessions < ActiveRecord::Migration
  def self.up
    create_table :sessions do |t|
      t.string :name
      t.date :start_date
      t.references :speaker
      t.references :conference

      t.timestamps
    end
  end

  def self.down
    drop_table :sessions
  end
end
