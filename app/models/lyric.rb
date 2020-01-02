class Lyric < ApplicationRecord

validates :name, :song_id, presence: true

belongs_to :song

end