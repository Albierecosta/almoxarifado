class CreateProdutos < ActiveRecord::Migration[7.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.text :descricao
      t.integer :estoque
      t.string :medida
      t.date :dt_entrada
      t.date :dt_validade

      t.timestamps
    end
  end
end
