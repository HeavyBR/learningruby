require_relative '../../app/bank'

describe ContaCorrente do
  describe 'Saque' do
    context 'quando o valor é positivo' do
      before(:all) do
        @cc = ContaCorrente.new(1000.00)
        @cc.saca(200.00)
      end
      it 'entao atualiza saldo' do
        expect(@cc.saldo).to eql 795.00
      end
    end
    context 'quando o saldo é zero' do
      before(:all) do
        @cc = ContaCorrente.new(0.0)
        @cc.saca(200.00)
      end
      it 'entao vejo mensagem de saldo insuficiente' do
        expect(@cc.mensagem).to eql 'Saldo insuficiente para saque.'
      end
      it 'e o saldo permanece com 0.0' do
        expect(@cc.saldo).to be == 0
      end

    end
    context 'quando o saldo é insuficiente' do
      before(:all) do
        @cc = ContaCorrente.new(100.00)
        @cc.saca(200.00)
      end
      it 'entao vejo mensagem de saldo insuficiente' do
        expect(@cc.mensagem).to eql 'Saldo insuficiente para saque.'
      end

      it 'e o saldo permanece inalterado' do
        expect(@cc.saldo).to be == 100.00
      end
    end

    context 'quando supera limite de saque' do
      before(:all) do
        @cc = ContaCorrente.new(1000.00)
        @cc.saca(701.00)
      end
      it 'entao vejo mensagem de saldo insuficiente' do
        expect(@cc.mensagem).to eql 'O valor de saque máximo é de R$ 700.0'
      end

      it 'e o saldo permanece inalterado' do
        expect(@cc.saldo).to be == 1000.00
      end
    end
  end
end 