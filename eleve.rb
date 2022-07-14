class Eleve

  MAJORITE = 18
  MOYENNE = 10

  attr_reader :nom, :age, :notes
  attr_writer :age

  def self.bonjour(nom)
    puts "Salut #{nom}"
  end

  def initialize(nom, age)
    @nom = nom
    @age = age
    @notes = []
  end

  def demo_public
    demo
  end

  def bonjour
    self.class.bonjour(@nom)
  end

  def isMajeur?
    @age >= MAJORITE
  end

  def ajouterNote(note)
    @notes << note
  end

  def moyenne
    m = 0
    @notes.each { |note| m += note }
    return m / @notes.length
  end

  def moyenne?
    return moyenne >= MOYENNE
  end

  def >(eleve)
    moyenne > eleve.moyenne
  end

  private
  def demo
    puts 'Demo'
  end

  # def bonjour
  #   puts "Bonjour #{@nom}, j'ai #{@age} ans"
  #   puts 'Je suis majeur' if isMajeur?
  # end

  # def age=(age)
  #   @age = age.to_i
  # end

  # def age
  #   @age
  # end

end


eleve1 = Eleve.new('Nathan', 19)
eleve1.ajouterNote(18)
eleve1.ajouterNote(10)
eleve1.ajouterNote(7)

eleve2 = Eleve.new('Marc', 19)
eleve2.ajouterNote(18)
eleve2.ajouterNote(20)
eleve2.ajouterNote(7)

puts eleve1.moyenne
puts eleve1.moyenne?

puts eleve1 > eleve2


class String

  def bonjour
    "Bonjour #{self}"
  end

end

# puts 'Nathan'.bonjour
