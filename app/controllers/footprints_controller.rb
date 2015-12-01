class FootprintsController < ApplicationController
  def index
    @user =  current_user
    @user_interests = @user.categories.select('id')
    @current_user_categories= current_user.categories.select('category_id')
    @notes_feed = Note.where("id in (select note_id from categories_notes where categories_notes.category_id in (?))",@current_user_categories)
    @blogs_feed = Blog.where("id in (select blog_id from blogs_categories where blogs_categories.category_id in (?))",@current_user_categories)
  end

end


#(SELECT "categories"."id" FROM "categories" INNER JOIN "categories_users" ON "categories"."id" = "categories_users"."category_id" WHERE "categories_users"."user_id" = 3)