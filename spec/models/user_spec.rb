describe User do
  let!(:user) {create(:user)}

  it "should have valid attributes" do
    expect(user).to be_valid
  end

  it "#name returns a string" do
    expect(user.name).to match 'Test User'
  end
end
