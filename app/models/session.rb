class Session < ActiveRecord::Base
  belongs_to :speaker
  belongs_to :conference
end
