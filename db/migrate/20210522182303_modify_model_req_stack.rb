class ModifyModelReqStack < ActiveRecord::Migration[6.0]
  def change
    add_reference :req_stacks, :req
    add_reference :req_stacks, :stack
  end
end
