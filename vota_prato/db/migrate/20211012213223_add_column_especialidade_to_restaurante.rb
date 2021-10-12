class AddColumnEspecialidadeToRestaurante < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurantes, :especialidade, :string
  end
end
