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

class Delegue < Eleve
  
  def partcipeConseil
    puts 'Salut je suis au conseil' if moyenne?
  end

  def moyenne
    super + 1
  end

  def ajouterNote(note)
    super(note + 1)
  end

end


eleve1 = Eleve.new('Nathan', 19)
eleve1.ajouterNote(18)
eleve1.ajouterNote(10)
eleve1.ajouterNote(7)

d = Delegue.new('Marc', 18)
d.ajouterNote(18)
d.ajouterNote(14)
d.ajouterNote(15)
puts d.notes.inspect
# puts d.class.superclass


class String

  def bonjour
    "Bonjour #{self}"
  end

end

# puts 'Nathan'.bonjour
