class Event < ActiveRecord::Base
  has_many :movies
  
  validates :location, :occurs_at, presence: true

  validates :location, uniqueness: { 
    scope: :occurs_at, 
    message: 'Event already scheduled at that time', 
    case_sensitive: false 
  }
end
