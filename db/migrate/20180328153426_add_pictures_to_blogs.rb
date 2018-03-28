class AddPicturesToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_reference :blogs, :picture, foreign_key: true
  end
end
