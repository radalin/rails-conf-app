class Conference < ActiveRecord::Base
  has_many :sessions
  has_and_belongs_to_many :attendees
  scope :upcoming, lambda {
    where("scheduled_to > ?", Time.now)
  }
  scope :passed, lambda {
    where("scheduled_to < ?", Time.now)
  }
  scope :attended_by, lambda { |attendee_id|
    where("attendees_conferences.conference_id = conferences.id AND attendees_conferences.attendee_id = ?" , attendee_id)
  }
  def to_s
    name
  end
end
