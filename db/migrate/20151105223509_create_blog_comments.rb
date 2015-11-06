class CreateBlogComments < ActiveRecord::Migration
  def change
    create_table :blog_comments do |t|
      t.references :blog, index: true, foreign_key: true
      t.text :body
      t.timestamps null: false
    end
  end
end
