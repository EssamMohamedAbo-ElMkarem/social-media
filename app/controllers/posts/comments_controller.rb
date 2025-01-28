class Posts::CommentsController < ApplicationController
  before_action :set_post

  def new
  end
  def create
    @comment = @post.comments.new(comment_params)
    @comment.user_id = current_user.id
    @comment.save!
    redirect_to feed_path
  end
  private
    def set_post
      @post = Post.find(params[:post_id])
    end
    def comment_params
      params.require(:comment).permit(:content)
    end
end
