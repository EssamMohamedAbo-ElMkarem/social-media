module Chats
  class UserSearchController < ApplicationController
    def create
      if params[:query].length < 3
        return
      end
      @users = User.where("email like ?", "%#{params[:query]}%")
      render turbo_stream: turbo_stream.update("user_results", partial: "user", collection: @users)
    end
  end
end
