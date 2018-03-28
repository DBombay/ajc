class AddPicturesToEntries < ActiveRecord::Migration[5.1]
  def change
    add_reference :entries, :picture, foreign_key: true
  end
end
