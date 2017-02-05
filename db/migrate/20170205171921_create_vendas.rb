class CreateVendas < ActiveRecord::Migration[5.0]
  def change
    create_table :vendas do |t|
    	t.string :comprador
    	t.string :descricao
    	t.decimal :preco_unitario, precision: 8, size: 2
    	t.decimal :quantidade, precision: 8, size: 2
    	t.string :endereco
    	t.string :fornecedor
    	
      t.timestamps
    end
  end
end
