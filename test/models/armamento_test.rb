require 'test_helper'

class ArmamentoTest < ActiveSupport::TestCase
  def setup
    @armamento = Armamento.new(nome: 'Bomba H', descricao: 'Transforma tudo em pó',poder_destruicao: 10, quantidade: 300)
  end

  test 'armamento deve ser valido' do
    assert @armamento.valid?
  end
end
