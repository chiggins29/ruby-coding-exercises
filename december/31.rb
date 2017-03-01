require 'rspec'

# ¥
# £
# $

def currency_converter amount, location
	currency_converter.new(5000, "USD") #=> "$1.00"
	Money.new(100, "GBP") #=> "£1.00"
	Money.new(100, "EUR") #=> "€1.00"
end

describe 'Currency converter' do
  it 'can properly format currency for US, Japan, and UK' do
    expect(currency_converter 5000, 'US').to eq('$5000.00')
    expect(currency_converter 5000, 'Japan').to eq('¥5000')
    expect(currency_converter 5000, 'UK').to eq('£5000,00')
  end
end
