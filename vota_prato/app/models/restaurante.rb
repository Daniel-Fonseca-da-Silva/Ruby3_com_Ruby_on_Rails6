class Restaurante < ApplicationRecord

  validates_presence_of :nome, message: "campo obrigatório"
  validates_presence_of :endereco, message: "campo obrigatório"
  validates_presence_of :especialidade, message: "campo obrigatório"

  validates_uniqueness_of :nome, message: "nome já cadastrado"
  validates_uniqueness_of :endereco, message: "Endereço já cadastrado"

  validate :primeira_letra_deve_ser_maiscula

  private
  def primeira_letra_deve_ser_maiscula
    errors.add(:nome, "primeira letra deve ser maiúscula") unless nome = ~/[A-Z].*/
  end

end
