require_relative './my_spec.rb'

def emphasize(value)
  "#{value.upcase}!"
end

def expect(output)
  ExpectedTarget.new(output)
end

def eq(expected_output)
  expected_output
end

expect(emphasize('hello')).to(eq('HELLO!'))