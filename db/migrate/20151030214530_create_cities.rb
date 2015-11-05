class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :city_name
      t.string :city_desc

      t.timestamps null: false
    end
  end
end
