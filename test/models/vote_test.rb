require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  should validate_presence_of(:name)
end
