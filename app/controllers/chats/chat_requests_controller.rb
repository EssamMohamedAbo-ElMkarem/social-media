module Chats
  class ChatRequestsController < ApplicationController
    def new
      @user = User.find(params[:user_id])

      @conversation = ChatConversation.find_by(user_id_1: current_user.id, user_id_2: params[:user_id]) ||
                      ChatConversation.find_by(user_id_1: params[:user_id], user_id_2: current_user.id)

      if @conversation.nil?
        @conversation = ChatConversation.new(user_id_1: current_user.id, user_id_2: params[:user_id])
        if @conversation.save
          Rails.logger.info("Created new conversation: #{@conversation.id}")
        else
          Rails.logger.error("Failed to create new conversation: #{@conversation.errors.full_messages.join(', ')}")
        end
      else
        Rails.logger.info("Found existing conversation: #{@conversation.id}")
      end
    end
  end
end
