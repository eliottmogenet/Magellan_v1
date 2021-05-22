class AddInfoToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :job, :string
    add_column :users, :company, :string
    add_column :users, :location, :string
    add_column :users, :recruiter, :boolean, default: true
    add_column :users, :timezone, :string
  end
end
