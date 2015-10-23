class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :city
      t.string :title
      t.integer :uid
      t.text :content
      t.string :tags

      t.timestamps null: false
    end
  end
end
