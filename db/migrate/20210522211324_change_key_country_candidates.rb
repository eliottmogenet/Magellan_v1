class ChangeKeyCountryCandidates < ActiveRecord::Migration[6.0]
  def change
    remove_reference :candidates, :countrie
    add_reference :candidates, :country
  end
end
