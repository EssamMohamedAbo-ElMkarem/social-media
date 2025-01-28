class Message < ApplicationRecord
  belongs_to :chat_conversation
  belongs_to :user
  has_rich_text :content
end
