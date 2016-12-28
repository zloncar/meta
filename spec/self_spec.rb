require 'self'

describe Foo do
  let(:foo) { Foo.new.testing_self }

  it 'returns instance of foo class' do
    expect(foo).to be_instance_of(Foo)
  end

  it 'returns correct instance variable value' do
    expect(foo.bar).to eql(6)
  end
end
