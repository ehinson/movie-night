require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  should validate_presence_of(:title)
  
  should validate_presence_of(:url)

   should validate_uniqueness_of(:title).
    scoped_to(:event_id).
    with_message('Someone already suggested that').
    case_insensitive

  
  test 'requires a title' do
    @movie = Movie.new

    @movie.title = nil
    refute @movie.valid?

    @movie.title = ''
    refute @movie.valid?
  end

  test 'requires a url' do
    @movie = Movie.new

    @movie.url = nil
    refute @movie.valid?

    @movie.url = ''
    refute @movie.valid?
  end


end
