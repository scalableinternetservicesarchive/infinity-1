class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :city_name
      t.string :title
      t.text :content
      t.timestamps null: false
    end
  end
end
