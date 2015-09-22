class Movie < ActiveRecord::Base
  belongs_to :event

  validates :title, :url, presence: true

  validates :title, uniqueness: { 
    scope: :event_id, 
    message: 'Someone already suggested that', 
    case_sensitive: false 
  }

end
