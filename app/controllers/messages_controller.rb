class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to new_chats_chat_request_path(@message.chat_conversation_id), notice: "Message sent successfully."
    else
      flash[:alert] = "Failed to send message."
      redirect_back fallback_location: chats_path
    end
  end

  private

  def message_params
    params.permit(:content, :chat_conversation_id, :user_id)
  end
end
