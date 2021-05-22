class AddReferenceToCountry < ActiveRecord::Migration[6.0]
  def change
    add_reference :countries, :tech_hub
  end
end
