class FeedController < ApplicationController
  def show
    @posts = Post.order(created_at: :desc)
  end
end
