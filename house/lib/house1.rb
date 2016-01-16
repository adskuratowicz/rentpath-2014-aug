class House
  attr_reader :random
  def initialize(random=false)
    @random = random
  end

  def recite
    1.upto(12).collect {|i| line(i)}.join("\n")
  end

  def line(num)
    "This is #{phrase(num)}.\n"
  end

  def phrase(num)
    d =
      if random
        data.shuffle
      else
        data
      end

    d.last(num).join(" ")
  end

  def data
    [ "the horse and the hound and the horn that belonged to",
      "the farmer sowing his corn that kept",
      "the rooster that crowed in the morn that woke",
      "the priest all shaven and shorn that married",
      "the man all tattered and torn that kissed",
      "the maiden all forlorn that milked",
      "the cow with the crumpled horn that tossed",
      "the dog that worried",
      "the cat that killed",
      "the rat that ate",
      "the malt that lay in",
      "the house that Jack built"]
  end
end

puts House.new.line(12)
puts
puts House.new(true).line(12)
