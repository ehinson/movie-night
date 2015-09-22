class Vote < ActiveRecord::Base
  belongs_to :movie
  
  validates :event, :name, :movie, presence: true




end
