text = "Un homme nourrissait une chèvre et un âne. Or la chèvre devient un âne car elle avait faim. Mais l'homme n'était pas content car il n'aime pas les ânes"

words_stock = Hash.new(0)
words = text.downcase.tr(',.":', '').split(' ')

words.each { |w| words_stock[w.to_sym] += 1 }

words_stock_sortby = words_stock.sort_by { |key, value| value  }
words_stock_sortby.reverse!
first = words_stock_sortby.first
puts "Le mot qui apparait le plus souvent est : \”#{first[0]}\" qui apparait #{first[1]} fois"
