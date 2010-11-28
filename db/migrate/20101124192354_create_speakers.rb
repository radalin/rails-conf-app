class CreateSpeakers < ActiveRecord::Migration
  def self.up
    create_table :speakers do |t|
      t.string :fname
      t.string :lname
      t.string :bio
      t.string :blog_page

      t.timestamps
    end
  end

  def self.down
    drop_table :speakers
  end
end
