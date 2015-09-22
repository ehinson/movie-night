class Vote < ActiveRecord::Base
  validates :event, :name, :movie, presence: true


end
