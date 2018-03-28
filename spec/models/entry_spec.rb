describe Entry, type: :model do
  let!(:blog) { create(:blog) }
  let(:entry) { create(:entry) }

  it { should belong_to(:blog) }
  it { should validate_presence_of(:body) }
  it { should have_many(:pictures) }
end
