class City < ActiveRecord::Base

  has_many :notes

  def self.search(search)
    where("city_name = ?", "%#{search}%")
  end


end
