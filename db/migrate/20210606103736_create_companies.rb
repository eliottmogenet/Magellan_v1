class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.text :team
      t.text :job_description

      t.timestamps
    end
  end
end
