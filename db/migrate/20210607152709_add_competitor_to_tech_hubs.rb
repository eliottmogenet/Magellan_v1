class AddCompetitorToTechHubs < ActiveRecord::Migration[6.0]
  def change
    add_reference :competitors, :tech_hub
  end
end
