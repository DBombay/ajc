describe Picture, type: :model do
  let(:blog) { create(:blog) }
  let(:entry) { create(:entry) }
  let(:picture) { create(:picture) }

  it { should validate_presence_of(:url) }
  it { should belong_to(:entry) }
end
