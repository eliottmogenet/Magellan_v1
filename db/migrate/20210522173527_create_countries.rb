class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.text :benefits
      t.integer :local_share_tax
      t.string :notice_period
      t.string :currency

      t.timestamps
    end
  end
end
