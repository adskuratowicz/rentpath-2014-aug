class Bottles
  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    bottle_number = bottle_number_for(number)
    bottle_number_successor = bottle_number_for(bottle_number.next_number)
    "#{bottle_number.remaining.capitalize} #{bottle_number.container} of beer on the wall, " +
    "#{bottle_number.remaining} #{bottle_number.container} of beer.\n" +
    "#{bottle_number.instruction}, " +
    "#{bottle_number_successor.remaining} #{bottle_number_successor.container} of beer on the wall.\n"
  end

  private

  def bottle_number_for(number)
    Kernel.const_get("BottleNumber#{number}").new(number)
  rescue NameError
    BottleNumber.new(number)
  end
end

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def container
    'bottles'
  end

  def next_number
    number - 1
  end

  def pronoun
    'one'
  end

  def remaining
    number.to_s
  end

  def instruction
    "Take #{pronoun} down and pass it around"
  end
end

class BottleNumber0 < BottleNumber
  def next_number
    99
  end

  def remaining
    'no more'
  end

  def instruction
    'Go to the store and buy some more'
  end
end

class BottleNumber1 < BottleNumber
  def pronoun
    'it'
  end

  def container
    'bottle'
  end
end
