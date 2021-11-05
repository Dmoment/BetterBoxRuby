class ExpectedTarget
  def initialize(output)
    @output = output
  end

  def to(expected_output)
    if @output == expected_output
      puts '.'
    else
      raise "Expected #{@output} should be equal to #{expected_output}"
    end
  end
end