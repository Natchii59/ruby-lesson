def convert_to_min(seconds)
  seconds.to_i / 60
end

def convert_to_seconds(minutes)
  minutes.to_i * 60
end

def salutation(nom, prefix = 'Bonjour')
  puts "#{prefix} #{nom}"
end

def liste(prefix, *noms)
  noms.each { |nom| puts "- #{prefix} #{nom}"}
end


def reorganiser_liste(croissant, *noms)
  new_noms = noms.collect { |nom| nom.to_s }

  new_noms.sort!
  new_noms.reverse! if croissant

  return new_noms
end

puts reorganiser_liste(true, 'Jean', 'Marc', 'Marion', 'Nathan', 'Louise', 'Léa').inspect
puts reorganiser_liste(false, 'Jean', 'Marc', 'Marion', 'Nathan', 'Louise', 'Léa').inspect
