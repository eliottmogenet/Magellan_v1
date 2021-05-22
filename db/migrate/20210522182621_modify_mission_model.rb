class ModifyMissionModel < ActiveRecord::Migration[6.0]
  def change
    add_column :missions, :description, :text
    add_reference :missions, :req
  end
end
