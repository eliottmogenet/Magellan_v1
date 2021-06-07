class AddAttributesToModelCompany < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :industry, :string
    add_column :companies, :website, :string
  end
end
