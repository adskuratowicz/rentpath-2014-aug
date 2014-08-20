class House
  DATA = [
    'the house that Jack built',
    'the malt that lay in',
    'the rat that ate',
    'the cat that killed',
    'the dog that worried',
    'the cow with the crumpled horn that tossed',
    'the maiden all forlorn that milked',
    'the man all tattered and torn that kissed',
    'the priest all shaven and shorn that married',
    'the rooster that crowed in the morn that woke',
    'the farmer sowing his corn that kept',
    'the horse and the hound and the horn that belonged to'
  ].freeze

  def recite
   (1..12).to_a.map { |n| line n }.join("\n")
  end

  def line(number)
    'This is ' + segments(number).join(' ') + ".\n"
  end

  def segments(number)
    DATA[0..number-1].reverse
  end
end
