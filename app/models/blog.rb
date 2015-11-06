class Blog < ActiveRecord::Base
  validates_presence_of :body, :title, :link , :city_name
  has_many :blog_comments
  mount_uploader :picture, PictureUploader
end
