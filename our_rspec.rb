require_relative './my_spec.rb'

def emphasize(value)
  "#{value.upcase}!"
end

Rspec.describe 'emphasizing text' do
  it 'makes the text uppercase and addds exclamation point' do 
  expect(emphasize('hello')).to(eq('HELLO!'))
  end
end

