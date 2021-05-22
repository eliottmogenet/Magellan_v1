class CreateReqs < ActiveRecord::Migration[6.0]
  def change
    create_table :reqs do |t|
      t.string :title
      t.string :status
      t.string :company
      t.text :company_description
      t.integer :percentage_remote
      t.integer :size
      t.text :org
      t.text :project_description
      t.text :evolution
      t.text :application_process
      t.integer :timezone_range
      t.string :industry
      t.integer :xp_min
      t.integer :xp_max
      t.string :blog_link

      t.timestamps
    end
  end
end
