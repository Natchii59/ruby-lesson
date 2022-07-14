eleves = %w[Nathan Jean Marc]

eleves.each { |eleve| puts "Bonjour #{eleve}" }

marine = { age: 4, nom: 'Marine', note: 14 }
marine.each do |key, value|
  puts "#{key}: #{value}"
end
