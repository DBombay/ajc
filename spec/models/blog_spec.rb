describe Blog do
  let(:blog) { create(:blog) }

  it {should validate_presence_of(:title)}
  it {should have_many(:entries)}
end
