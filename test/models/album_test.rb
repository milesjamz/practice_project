require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "should not save without artist and name" do
    album = Album.new
    assert_not artist.save
  end
end
