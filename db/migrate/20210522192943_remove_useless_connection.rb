class RemoveUselessConnection < ActiveRecord::Migration[6.0]
  def change
    remove_reference :countries, :tech_hub
  end
end
