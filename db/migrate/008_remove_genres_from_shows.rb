class RemoveGenresFromShows < ActiveRecord::Migration[5.1]
    def change
        remove_column :shows, :genres, :string
    end
end 