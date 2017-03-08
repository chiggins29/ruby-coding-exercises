require 'rspec'

class String
  #this code will only count the words not the symbols
 def total_words
    scan(/\w+/).count
 end
    #scan is able to take a block in order to iterate over the words,, this code will create a hash and return how many times a word is in a sentence.
 def word_list
    list = Hash.new(0)
    downcase.scan(/\w+/) { |word| list[word] += 1 }
    list 
 end
end

describe 'Word Reporter' do
 before do
   @str = "- the quick brown fox / jumped over the lazy fox."
 end

 it 'Counts words accurately' do
   expect(@str.total_words).to eq(9)
 end

 it 'Returns a hash that totals up word usage' do
   expect(@str.word_list).to eq({"the"=>2,
                                 "quick"=>1,
                                 "brown"=>1,
                                 "fox"=>2,
                                 "jumped"=>1,
                                 "over"=>1,
                                 "lazy"=>1}
                               )
 end
end

