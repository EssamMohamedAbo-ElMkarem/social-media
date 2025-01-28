class CreateChatConversations < ActiveRecord::Migration[8.0]
  def change
    create_table :chat_conversations do |t|
      t.integer :user_id_1
      t.integer :user_id_2

      t.timestamps
    end
  end
end
