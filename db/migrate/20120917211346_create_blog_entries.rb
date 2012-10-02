class CreateBlogEntries < ActiveRecord::Migration
  def change
    create_table :blog_entries do |t|
      t.string :title
      t.string :slug
      t.text :body
      t.boolean :is_public

      t.timestamps
    end
  end
end
