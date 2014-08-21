class Bottles

  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    bottle_number = BottleNumber.new(number)
    bottle_number_successor = bottle_number.successor
    "#{bottle_number.remaining.capitalize} #{bottle_number.container} of beer on the wall, " +
    "#{bottle_number.remaining} #{bottle_number.container} of beer.\n" +
    "#{bottle_number.instruction}, " +
    "#{bottle_number_successor.remaining} #{bottle_number_successor.container} of beer on the wall.\n"
  end

end

class BottleNumber

  attr_reader :number

  def initialize(number)
    @number = number
  end

  def successor
    self.class.new(next_number)
  end

  def container
    case number
    when 1
      'bottle'
    else
      'bottles'
    end
  end

  def next_number
    case number
    when 0
      99
    else
      number - 1
    end
  end

  def pronoun
    case number
    when 1
      'it'
    else
      'one'
    end
  end

  def remaining
    case number
    when 0
      'no more'
    else
      number.to_s
    end
  end

  def instruction
    case number
    when 0
      'Go to the store and buy some more'
    else
      "Take #{pronoun} down and pass it around"
    end
  end

end
