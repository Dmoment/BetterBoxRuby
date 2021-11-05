
class Box
  attr_reader :lines

  def initialize
    @lines = []
  end

  def length_of_longest_line
    # @lines.map{ |p| p.length }.max
    @lines.map(&:length).max
  end

  def border
    '*' * (length_of_longest_line + 4)
  end

  def formatted_line(value)
    # If integer is greater than the length of str, returns a new String of length integer with str left justified and padded with padstr; otherwise, returns str.
    "* #{value.ljust(length_of_longest_line, ' ')} *"
  end

  def text value
    @lines << value
  end
end

def better_box_around
  box = Box.new
  yield(box)
  puts box.border
  box.lines.each { |value| puts box.formatted_line(value) }
  puts box.border
end

better_box_around do |box|
  box.text 'First line of the box'
  box.text 'This will be surrounded by a better box'
end