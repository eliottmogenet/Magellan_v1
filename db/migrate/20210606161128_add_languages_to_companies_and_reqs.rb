class AddLanguagesToCompaniesAndReqs < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :languages, :string, array: true, default: []
    add_column :reqs, :languages, :string, array: true, default: []
  end
end
