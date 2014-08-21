class Bottles

  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |i| verse(i) }.join("\n")
  end

  def verse(number)
    "#{remaining(number).capitalize} #{container(number)} of beer on the wall, " +
    "#{remaining(number)} #{container(number)} of beer.\n" +
    "#{instruction(number)}, " +
    "#{remaining(next_number(number))} #{container(next_number(number))} of beer on the wall.\n"
  end

  private

  def container(number)
    case number
    when 1
      'bottle'
    else
      'bottles'
    end
  end

  def next_number(number)
    case number
    when 0
      99
    else
      number - 1
    end
  end

  def pronoun(number)
    case number
    when 1
      'it'
    else
      'one'
    end
  end

  def remaining(number)
    case number
    when 0
      'no more'
    else
      number.to_s
    end
  end

  def instruction(number)
    case number
    when 0
      'Go to the store and buy some more'
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

end
