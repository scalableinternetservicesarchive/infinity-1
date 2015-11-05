class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :note, index: true, foreign_key: true
      t.text :body

      t.timestamps null: false
    end
  end
end
