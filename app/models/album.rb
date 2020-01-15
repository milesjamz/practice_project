class Album < ApplicationRecord

validates :name, :artist_id, presence: true

belongs_to :artist
has_many :songs
has_many :lyrics, through: :songs

end