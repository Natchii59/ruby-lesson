find = 4
nombre = nil

for num in 1..3
  next if nombre == find
  puts 'Entrez un nombre: '
  nombre = gets.chomp.to_i

  if nombre > find
    puts 'Trop grand'
  elsif nombre < find
    puts 'Trop petit'
  end
end

puts 'Bravo !!' if nombre == find
