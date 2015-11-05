class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :interests, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :is_female, :boolean, default: false
    add_column :users, :quote, :string
  end
end
