class AddTitleToGuides < ActiveRecord::Migration[6.0]
  def change
    add_column :guides, :title, :string
  end
end
