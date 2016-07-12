class Artist < ApplicationRecord
	has_many :songs, dependent: :destroy #(this will delete all the songs when you deleted the artist)
end
