class AddLengthToSongs < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :length, :integer
  end
end
