class Song < ApplicationRecord

validates :name, :album_id, presence: true

belongs_to :album
has_many :lyrics

end