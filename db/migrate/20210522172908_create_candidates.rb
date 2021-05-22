class CreateCandidates < ActiveRecord::Migration[6.0]
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.string :location
      t.string :timezone
      t.string :job
      t.string :status
      t.text :next_steps
      t.string :github_profile
      t.string :linkedin_profile
      t.integer :expected_wage
      t.text :softskills
      t.string :industry

      t.timestamps
    end
  end
end
