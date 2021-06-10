class AddAttributesToCandidateModel < ActiveRecord::Migration[6.0]
  def change
    add_column :candidates, :overlap, :string
    add_column :candidates, :area_median, :string
    add_column :candidates, :notice_period, :string
    add_column :candidates, :share_tax, :string
    add_column :candidates, :healthcare, :string
    add_column :candidates, :other_benefits, :string
    add_column :candidates, :tools, :string, array: true, default: []
    add_column :candidates, :practice, :string
    add_column :candidates, :career_paths, :string, array: true, default: []
    add_column :candidates, :next_job, :string

    add_column :tech_hubs, :industries, :string, array: true, default: []
  end
end

