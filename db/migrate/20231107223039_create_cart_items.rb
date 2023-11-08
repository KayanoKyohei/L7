class CreateCartItems < ActiveRecord::Migration[7.1]
  def change
    create_table :cart_items do |t|
      t.integer :qty
      t.integer :id
      t.integer :name

      t.timestamps
    end
  end
end
