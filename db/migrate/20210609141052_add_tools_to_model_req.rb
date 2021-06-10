class AddToolsToModelReq < ActiveRecord::Migration[6.0]
  def change
    add_column :reqs, :tools, :string, array: true, default: []
  end
end
