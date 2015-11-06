class BlogComment < ActiveRecord::Base
  validates_presence_of :body
  belongs_to :blog
  belongs_to :user

end
