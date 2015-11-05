class BlogCommentsController < ApplicationController
  def create
    @blog = Blog.find(params[:blog_id])
    #@comment = @blog.blog_comments.create!(params[:blog_comment])
    @comment = @blog.blog_comments.create!(params.require(:blog_comment).permit!)
    redirect_to @blog
  end
end
