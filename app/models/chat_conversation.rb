class ChatConversation < ApplicationRecord
  belongs_to :user_1, class_name: "User", foreign_key: "user_id_1"
  belongs_to :user_2, class_name: "User", foreign_key: "user_id_2"
  has_many :messages, dependent: :destroy
end
