class CreateGuides < ActiveRecord::Migration[6.0]
  def change
    create_table :guides do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.string :location
      t.text :biography

      t.timestamps
    end
  end
end
