class AddCandidateReferenceToChallenge < ActiveRecord::Migration[6.0]
  def change
    add_reference :challenges, :candidate
  end
end
