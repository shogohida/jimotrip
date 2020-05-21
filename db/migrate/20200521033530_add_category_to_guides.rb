class AddCategoryToGuides < ActiveRecord::Migration[6.0]
  def change
    add_column :guides, :category, :string
  end
end
