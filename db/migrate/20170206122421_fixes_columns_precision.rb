class FixesColumnsPrecision < ActiveRecord::Migration[5.0]
  def change
    change_column :vendas, :preco_unitario, :decimal, :precision => 8, :scale => 2
    change_column :vendas, :quantidade, :decimal, :precision => 8, :scale => 2
  end
end
