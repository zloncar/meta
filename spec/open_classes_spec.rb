class String
  def to_alphanumeric
    gsub /\W/, ''
  end
end

describe 'OpenClasses' do
  let(:foo) { '  87^^xDS,,|abC ' }

  it 'converts string to alphanumeric' do
    expect( foo.to_alphanumeric ).to eq('87xDSabC')
  end
end
