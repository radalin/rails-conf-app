class CreateConferences < ActiveRecord::Migration
  def self.up
    create_table :conferences do |t|
      t.string :name
      t.date :scheduled_to
      t.integer :duration

      t.timestamps
    end
  end

  def self.down
    drop_table :conferences
  end
end
