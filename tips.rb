# cmd = gets.chomp

# case cmd
#   when 'add' then puts 'Ajout'
#   when 'rm' then puts 'Suppression'
#   else puts 'Iconnu'
# end

# puts a < b ? 'A < B' : 'A >= B'

# a = false
# a ||= "Valeur par defaut"
# puts a

def majuscule(nom)
  nom.to_s.upcase if nom.respond_to? :to_s
end

def triple(chiffre)
  chiffre.to_f * 3 if chiffre.respond_to? :to_f
end

puts majuscule('Yo')
puts triple('1.908')
