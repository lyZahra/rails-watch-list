class RenamePsterUrlToPosterUrl < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :pster_url, :poster_url
  end
end
