class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :genre_id
      t.integer :praice
      t.integer :image_id
      t.integer :sales_status
      t.text :introduction
      t.integer :non_tax_price

      t.timestamps
    end
  end
end
