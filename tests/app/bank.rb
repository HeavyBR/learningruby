class Conta
  attr_accessor :saldo, :mensagem

  def initialize(saldoInicial)
    self.saldo = saldoInicial
  end

  def saca(valor, max, taxa)
    if valor > max
      self.mensagem = "O valor de saque máximo é de R$ #{max}"
      return
    end
    self.saldo -= valor + taxa  if saldo - valor >= 0.0 else self.mensagem = 'Saldo insuficiente para saque.'
  end

end

class ContaCorrente < Conta

  def saca(valor, max = 700.0, taxa = 5.0)
    super
  end

end

class ContaPoupanca < Conta

  def saca(valor, max = 500.0, taxa = 2.0)
    super
  end

end