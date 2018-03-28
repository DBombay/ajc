class AddBlogsToEntries < ActiveRecord::Migration[5.1]
  def change
    add_reference :entries, :blog, foreign_key: true
  end
end
