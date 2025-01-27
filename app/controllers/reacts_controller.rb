class ReactsController < ApplicationController
  before_action :authenticate_user!

  def create
    reaction_type = params[:name]
    post = Post.find(params[:post_id])

    reaction = Reaction.find_or_initialize_by(user: current_user, post: post, name: reaction_type)

    if reaction.persisted?
      # Reaction exists, so remove it (toggle)
      reaction.destroy
      count = Reaction.where(post: post, name: reaction_type).count
      render json: { count: count, action: "removed" }
    else
      # Save new reaction
      reaction.save!
      count = Reaction.where(post: post, name: reaction_type).count
      render json: { count: count, action: "added" }
    end
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Post not found" }, status: :not_found
  rescue StandardError => e
    render json: { error: e.message }, status: :unprocessable_entity
  end
end
