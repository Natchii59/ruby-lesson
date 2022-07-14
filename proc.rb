# tableau = [1, 2, 6]
# tableau.map! { |item| item * 2 }
# puts tableau.inspect


# def demo
#   puts 'Bonjour'
#   yield('Marc')
#   puts 'Au revoir'
# end

# demo { |nom| puts "Comment ça va #{nom} ?" }


eleves = [
  { note: 15, nom: 'Marine' },
  { note: 5, nom: 'Marc' },
  { note: 19, nom: 'Jean' },
]

def moyenne(eleves, proc_moyenne, proc_no_moyenne)
  eleves.each do |eleve|
    if eleve[:note] >= 10
      proc_moyenne.call(eleve)
    else
      proc_no_moyenne.call(eleve)
    end
  end
end

show_moyenne = ->(eleve){ puts "#{eleve[:nom]} a la moyenne" }
show_no_moyenne = lambda { |eleve| puts "#{eleve[:nom]} n'a pas la moyenne" }
# show_moyenne.call(eleves.first)

# moyenne(eleves, &show_moyenne)
# moyenne(eleves) { |eleve| puts "#{eleve[:nom]} a la moyenne" }
moyenne(eleves, show_moyenne, show_no_moyenne)


# a = [1, 2, 3, 6]
# b = [1, 7, 9]

# carre = Proc.new { |n| n**2 }

# a.map! &carre
# b.map! &carre

# puts a.inspect
# puts b.inspect
