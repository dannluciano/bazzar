class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :email
      t.text :message
      t.boolean :status
      t.integer :product_id
      t.timestamps
    end
  end
end
