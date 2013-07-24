class CommentsController < ApplicationController
  def create
    @post =Post.find(params[:post_id])
    @comment=@post.comments.create(params[:post].permit(:commentor, :body))
    redirect_to post_path(@post)
  end
end
