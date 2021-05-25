class AddReferencesToMessages < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :user
    add_reference :messages, :chatroom
  end
end
