class Blog < ActiveRecord::Base
  #validates_presence_of :body, :title, :link , :city_name
  has_many :blog_comments
  has_and_belongs_to_many :categories
  belongs_to :user
  mount_uploader :picture, PictureUploader
end
