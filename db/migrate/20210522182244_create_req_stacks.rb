class CreateReqStacks < ActiveRecord::Migration[6.0]
  def change
    create_table :req_stacks do |t|

      t.timestamps
    end
  end
end
