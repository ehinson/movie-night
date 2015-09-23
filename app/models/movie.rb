class Movie < ActiveRecord::Base
  belongs_to :event
  has_many :votes

  validates :title, :url, presence: true

  validates :title, uniqueness: { 
    scope: :event_id, 
    message: 'Someone already suggested that', 
    case_sensitive: false 
  }

  validates :event, presence: true

end
