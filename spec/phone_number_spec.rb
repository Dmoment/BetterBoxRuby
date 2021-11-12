# frozen_string_literal: true

require_relative '../phone_number'
RSpec.describe PhoneNumber do
  context 'phone number contains dashes' do
    it 'strips out the dashes' do
      phone_number = PhoneNumber.new('555-856-8075')
      expect(phone_number.value).to eq('5558568075')
    end
  end

  context 'phone number contains parentheses' do
    it 'strips out the non-numeric characters' do
      phone_number = PhoneNumber.new('(555) 856-8075')
      expect(phone_number.value).to eq('5558568075')
    end
  end

  context 'phone number contains country code' do
    it 'strips out the country code' do
      phone_number = PhoneNumber.new('+1 555 856 8075')
      expect(phone_number.value).to eq('5558568075')
    end
  end
end
