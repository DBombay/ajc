class AddEntriesToPictures < ActiveRecord::Migration[5.1]
  def change
    add_reference :pictures, :entry, foreign_key: true
  end
end
