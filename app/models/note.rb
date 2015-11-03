class Note < ActiveRecord::Base
  belongs_to :user
  belongs_to :city

  # search method on note object which will return all notes of a city
  def self.search(search)

    where("city_name = ?", "%#{search}%")

  end

end
