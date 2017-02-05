class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
    	t.string :buyer
    	t.string :description
    	t.decimal :unit_price, precision: 8, scale: 2
    	t.decimal :amount, precision: 8, scale: 2
    	t.string :address
    	t.string :supplier
    	
      t.timestamps
    end
  end
end
