class UpdateDirectorAndGenreWithDefaultValue < ActiveRecord::Migration[7.1]
  def change
    change_column :movies, :director_id, :integer, default: 0
    change_column :movies, :genre_id, :integer, default: 0
  end
end
