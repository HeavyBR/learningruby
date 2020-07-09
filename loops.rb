5.times do |i|
  puts "Repetindo #{i} vezes"
end

init = 0



while init <= 10 do
  puts "init #{init}"
  init += 1
  puts "Concatenando " + init.to_s
end

for i in (0...10)
  puts 'Repetindo ' + i.to_s
  puts i.class
end

vingadores = ['Ironman', 'Hulk', 'Spider-Man']
vingadores.each do |v|
  puts v
end