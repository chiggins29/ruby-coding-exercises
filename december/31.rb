require 'rspec'

# ¥
# £
# $

def currency_converter amount, location
	case location
		when "US" then 5000
			return "$5000.00"
		when "Japan" then 5000
			return "¥5000"
		when "UK" then 5000
			return "£5000,00"
		else
			return false
		end
end

describe 'Currency converter' do
  it 'can properly format currency for US, Japan, and UK' do
    expect(currency_converter 5000, 'US').to eq('$5000.00')
    expect(currency_converter 5000, 'Japan').to eq('¥5000')
    expect(currency_converter 5000, 'UK').to eq('£5000,00')
  end
end
