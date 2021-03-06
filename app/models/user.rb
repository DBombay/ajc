class User < ApplicationRecord
  validates :name, presence: true

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      auth['info'] ? user.name = auth['info']['name'] : ''
    end
  end
end
