class CreateBlogsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs_tables do |t|
      t.string :title, null: false
      t.boolean :completed, default: false
      t.text :client_review

      t.timestamps
    end
  end
end
