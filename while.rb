find = 4
nombre = nil

while nombre != find
  puts 'Entrez un nombre: '
  nombre = gets.chomp.to_i

  if nombre > find
    puts 'Trop grand'
  elsif nombre < find
    puts 'Trop petit'
  end
end

puts "Tu as trouvé #{find}"