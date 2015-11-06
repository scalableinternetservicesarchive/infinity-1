class CommentsController < ApplicationController

  def comments_params
    params.require(:comment).permit(:comment, :post, :body, :post_comments_path)
  end


  def create
    #:comments_params
    @note = Note.find(params[:note_id])
    #@comment = @post.comments.create!(params[:comment])
    @comment = @note.comments.create!(params.require(:comment).permit!)
    redirect_to @note
  end
end
