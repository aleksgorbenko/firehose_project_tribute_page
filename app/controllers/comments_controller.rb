class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
      if @comment.invalid?
        flash[:error] = "Could not post a comment. Name and comment fields should be minimum 2 characters each."
      end
    redirect_to root_path
  end

  def comment_params
    params.require(:comment).permit(:name, :text)
  end
end
