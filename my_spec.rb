class Rspec 
  def self.describe(description)
    yield
  end
end

def expect(output)
  ExpectedTarget.new(output)
end

def eq(expected_output)
  expected_output
end

def it(description) 
  yield
end

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

