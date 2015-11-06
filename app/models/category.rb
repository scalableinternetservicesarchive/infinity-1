class Category < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :notes
  has_and_belongs_to_many :blogs
end
