describe User, type: :model do
  let(:user) { create(:user) }

  it { should validate_presence_of(:name) }
end
