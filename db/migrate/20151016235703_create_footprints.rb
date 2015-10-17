class CreateFootprints < ActiveRecord::Migration
  def change
    create_table :footprints do |t|

      t.timestamps null: false
    end
  end
end
