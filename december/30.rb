require 'rspec'

class Hash
  def param_converter
    self.map { |i| i * "=" } * "&"
  end
end


describe 'HTML Param Converter' do
  it 'Adds an HTML param converter to the Hash class' do
    hash = { :topic => "baseball", :team => "astros" }
    expect(hash.param_converter).to eq('topic=baseball&team=astros')
  end
end

#.map will iterate over all the elements in the hash
# |i| will iterate over the hash -- i * "=" -- will combine you hash :key :value with an =
# * & will combine your two :key :value pairs. 