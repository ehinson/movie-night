require 'test_helper'

class EventTest < ActiveSupport::TestCase
  should validate_presence_of(:location)
  should validate_presence_of(:occurs_at)

  should validate_uniqueness_of(:location).
    scoped_to(:occurs_at).
    with_message('Event already scheduled at that time').
    case_insensitive


end
