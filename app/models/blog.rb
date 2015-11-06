class Blog < ActiveRecord::Base
  validates_presence_of :body, :title
  has_many :blog_comments
  mount_uploader :picture, PictureUploader
end
