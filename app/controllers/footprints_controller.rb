class FootprintsController < ApplicationController
  def index
    @user =  current_user
    @user_interests = @user.categories.select('id')
    @notes_feed = Note.where("id in (select note_id from categories_notes inner join categories where categories_notes.category_id = categories.id and categories.id in (?))",@user_interests).paginate(:page => params[:page], :per_page => 5)
    @blogs_feed = Blog.where("id in (select blog_id from blogs_categories inner join categories where blogs_categories.category_id = categories.id and categories.id in (?))",@user_interests).paginate(:page => params[:page], :per_page => 5)
  end
end
