class CompleteReferenceForCandidateStack < ActiveRecord::Migration[6.0]
  def change
    add_reference :candidate_stacks,:candidate
    add_reference :candidate_stacks, :stack
  end
end
