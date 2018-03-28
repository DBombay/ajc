describe User do
  let(:user) { create(:user) }

  it 'should create a valid user with acceptable params' do
    expect(user).to be_valid
    expect(user).to be_a(User)
  end

  it 'should not create a user with unacceptable params' do
    @bad_user = user
    @bad_user.name = nil
    @bad_user.provider = nil

    expect(@bad_user).to_not be_valid
  end

  it '#name returns a string' do
    expect(user.name).to match 'Test User'
  end
end
