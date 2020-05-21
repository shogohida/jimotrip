class RemoveDateFromGuides < ActiveRecord::Migration[6.0]
  def change
    remove_column :guides, :date, :date
  end
end
