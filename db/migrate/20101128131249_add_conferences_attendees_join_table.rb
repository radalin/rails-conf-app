class AddConferencesAttendeesJoinTable < ActiveRecord::Migration
  def self.up
    create_table :conferences_attendees, :id => false do |t|
        t.integer :conference_id
        t.integer :attendee_id
    end
  end

  def self.down
    drop_table :conferences_attendees
  end
end
