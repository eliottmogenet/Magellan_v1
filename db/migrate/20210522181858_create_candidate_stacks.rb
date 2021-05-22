class CreateCandidateStacks < ActiveRecord::Migration[6.0]
  def change
    create_table :candidate_stacks do |t|

      t.timestamps
    end
  end
end
