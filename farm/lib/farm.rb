using Article

class Farm
  attr_reader :animals

  NullAnimal = Struct.new(:species, :sound)

  def initialize(animals)
    @animals = init_animals(animals)
  end

  def lyrics
    animals.collect {|animal| verse(animal) }.join("\n\n")
  end

  def verse(animal)
    "Old MacDonald had a farm, E-I-E-I-O,\n" +
    "And on that farm he had #{animal.species.articlize}, E-I-E-I-O,\n" +
    "With #{animal.sound.articlize} #{animal.sound} here " +
      "and #{animal.sound.articlize} #{animal.sound} there,\n" +
    "Here #{animal.sound.articlize}, there #{animal.sound.articlize}, " +
      "everywhere #{animal.sound.articlize} #{animal.sound},\n" +
    "Old MacDonald had a farm, E-I-E-I-O."
  end

  private

  def init_animals(animals)
    animals.collect { |a| a || NullAnimal.new('<silence>', '<silence>') }
  end
end
