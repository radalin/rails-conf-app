class Speaker < ActiveRecord::Base
  has_many :sessions
  def to_s
    name
  end
end
