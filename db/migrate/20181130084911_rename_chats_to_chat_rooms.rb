class RenameChatsToChatRooms < ActiveRecord::Migration[5.2]
  def change
    rename_table :chats, :chat_rooms
  end
end
