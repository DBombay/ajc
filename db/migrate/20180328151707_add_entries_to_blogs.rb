class AddEntriesToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_reference :blogs, :entry, foreign_key: true
  end
end
