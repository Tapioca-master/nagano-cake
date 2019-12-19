class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.string :order_status
      t.integer :shipping
      t.string :ship_name
      t.string :ship_address
      t.string :postal_code
      t.integer :payment

      t.timestamps
    end
  end
end
