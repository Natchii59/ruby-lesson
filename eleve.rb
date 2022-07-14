module Notable

  MOYENNE = 10

  attr_accessor :notes

  def notes
    @notes = [] if !@notes
    return @notes
  end

  def ajouterNote(note)
    notes << note
  end

  def moyenne
    m = 0
    notes.each { |note| m += note }
    return m / notes.length
  end

  def moyenne?
    return moyenne >= MOYENNE
  end

  def >(eleve)
    return moyenne > eleve.moyenne
  end

end

class Eleve

  include Notable

  attr_reader :nom

  def self.bonjour(nom)
    puts "Salut #{nom}"
  end

  def initialize(nom)
    @nom = nom
  end

  def bonjour
    self.class.bonjour(@nom)
  end

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

class Professeur

  include Notable

end

eleve = Eleve.new('Nathan')
eleve.ajouterNote(18)
eleve.ajouterNote(14)
puts eleve.moyenne

prof = Professeur.new
prof.notes = [15, 19]
puts prof.moyenne