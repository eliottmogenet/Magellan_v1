class AddSelectBooleanToCandidate < ActiveRecord::Migration[6.0]
  def change
    add_column :candidates, :selected, :boolean, default: false
  end
end
