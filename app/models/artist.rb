class Artist < ApplicationRecord

has_many :albums
has_many :songs, through: :albums
has_many :lyrics, through: :songs

end