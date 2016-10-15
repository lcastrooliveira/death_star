class Armamento < ActiveRecord::Base
  validates :nome, :descricao, :poder_destruicao, :quantidade, presence: true
end
