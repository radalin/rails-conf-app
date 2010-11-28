class ChangeConferencesAttendeesTableName < ActiveRecord::Migration
    def self.up
      create_table :attendees_conferences, :id => false do |t|
          t.integer :conference_id
          t.integer :attendee_id
      end
      drop_table :conferences_attendees
    end

    def self.down
      drop_table :attendees_conferences
      create_table :conferences_attendees, :id => false do |t|
          t.integer :conference_id
          t.integer :attendee_id
      end
    end
end
