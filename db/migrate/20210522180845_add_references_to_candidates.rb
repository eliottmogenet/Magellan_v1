class AddReferencesToCandidates < ActiveRecord::Migration[6.0]
  def change
    add_reference :candidates, :countrie
    add_reference :candidates, :tech_hub
    add_column :candidates, :job_status, :string
  end
end
