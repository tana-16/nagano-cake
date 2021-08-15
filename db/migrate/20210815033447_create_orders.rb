class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :client_ID
      t.string :shipping_postal_code
      t.string :shipping_address
      t.string :shipping_name
      t.integer :postage
      t.string :payment_method
      t.integer :total_price
      t.integer :order_status

      t.timestamps
    end
  end
end
