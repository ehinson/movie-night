class Vote < ActiveRecord::Base
  validates :name, :event, :movie, presence: true

  
end
