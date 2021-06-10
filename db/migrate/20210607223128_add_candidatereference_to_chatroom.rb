class AddCandidatereferenceToChatroom < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :candidate
  end
end
