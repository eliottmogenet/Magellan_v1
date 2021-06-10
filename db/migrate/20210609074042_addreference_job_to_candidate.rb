class AddreferenceJobToCandidate < ActiveRecord::Migration[6.0]
  def change
    add_reference :jobs, :candidate
  end
end
