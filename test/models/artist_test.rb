require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  test "should not save without biography and name" do
    artist = Artist.new
    assert_not artist.save
  end
  
end
