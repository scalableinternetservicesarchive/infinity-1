class Note < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  belongs_to :city
  has_and_belongs_to_many :categories
  validates_presence_of  :title, :content, :city_name
  # search method on note object which will return all notes of a city
  def self.search(search)

    where("city_name = ?", "%#{search}%")

  end

end
