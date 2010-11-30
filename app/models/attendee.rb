class Attendee < ActiveRecord::Base
  has_and_belongs_to_many :conferences
  validates_uniqueness_of :email
end
