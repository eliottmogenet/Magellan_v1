class AddReqReferenceToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :req
  end
end
