class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :notes
  has_many :blogs
  has_and_belongs_to_many :categories
  mount_uploader :picture, PictureUploader
  validates_presence_of :first_name, :last_name, :email , :is_female

  def quote?
    # code here
  end

end
