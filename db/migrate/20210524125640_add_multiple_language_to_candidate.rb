class AddMultipleLanguageToCandidate < ActiveRecord::Migration[6.0]
  def change
    add_column :candidates, :languages, :string, array: true, default: []
  end
end
