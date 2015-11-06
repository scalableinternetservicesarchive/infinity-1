class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.string :city_name
      t.string :author
      t.string :link
      t.string :picture
      t.timestamps null: false
    end
  end
end
