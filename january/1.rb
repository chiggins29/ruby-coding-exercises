require 'rspec'

def title_creator title
	heading = %w{h1 #{title} h1}  #this just creates a regular string
	heading[1] = title 
	'<%s>%s</%s>' % heading  #this is taking the 3 elements from my heading var and placing each element into the h1 tag syntax.
end
	

describe 'HTML h1 converter' do
  it 'outputs an h1 tag given a title' do
    expect(title_creator 'A Heading').to eq('<h1>A Heading</h1>')
  end
end

title_creator('A Heading')

#p (<h1>'#{title}'</h1>)