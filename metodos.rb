def diga_ola
  puts 'diga ola'
end

def retorna_nome
  'Matheus'
end

def retorna_com_return
  return 'Matheus'
end

def soma(num1, num2)
  num1 + num2
end

def diga_nome(nome)
  puts 'Olá, ' + nome
end

diga_ola
diga_nome('roberto')
resultado1 = retorna_nome
resultado2 = retorna_com_return
resultado = soma(1,1)

puts resultado1
puts resultado2
puts resultado
