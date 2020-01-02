class Album < ApplicationRecord

belongs_to :artist
has_many :songs
has_many :lyrics, through: :songs

end