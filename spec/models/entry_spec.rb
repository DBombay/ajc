describe Entry do
  let!(:blog) { create(:blog) }
  let(:entry) { create(:entry) }

  it 'should be valid when it has a body' do
    expect(entry).to be_valid
  end

  it 'should not be valid without a body' do
    @entry = entry
    @entry.body = nil

    expect(@entry).to_not be_valid
  end
end
