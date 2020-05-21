class AddDateToGuides < ActiveRecord::Migration[6.0]
  def change
    add_column :guides, :date, :date
  end
end
