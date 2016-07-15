class Artist < ApplicationRecord
	has_many :songs, dependent: :destroy #(this will delete all the songs when you deleted the artist)
end
# the model/migration lets you change something small to fix.  helps with the data in the rows. no creating, deleting of anyhting
#it is a representation of the data of the app.