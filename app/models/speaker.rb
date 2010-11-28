class Speaker < ActiveRecord::Base
  has_many :sessions
end
