
class Carro

  attr_accessor :saldo

  def initialize
    self.saldo = 0.0
  end

  def deposita(valor)
    self.saldo += valor
    puts "Depositando uma quantida de #{valor} reais"
  end
end

c = Carro.new
c.deposita(100.0)

puts c.saldo