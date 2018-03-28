describe Blog do
  let(:blog) { create(:blog) }

  it 'should be valid' do
    expect(blog).to be_valid
  end
end
