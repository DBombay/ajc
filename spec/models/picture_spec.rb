describe Picture do
  let(:blog) { create(:blog) }
  let(:entry) { create(:entry) }
  let(:picture) { create(:picture) }

  it 'should be valid if it has a url' do
    expect(picture).to be_valid
  end

  it 'should not be valid without a url' do
    @bad_pic = picture
    @bad_pic.url = nil

    expect(@bad_pic).to_not be_valid
  end
end
