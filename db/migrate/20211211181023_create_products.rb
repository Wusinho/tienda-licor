class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :url_image
      t.string :price
      t.string :discount
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
