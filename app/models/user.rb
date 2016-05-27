class User < ActiveRecord::Base
  validates :name, presence: true
  validates :provider, presence: true
  validates :uid, presence: true
  validates :username, presence: true

  def self.from_omniauth(auth)
    find_by(provider: auth.provider, uid: auth.uid) || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create(
      name: auth.info.name,
      provider: auth.provider,
      uid: auth.uid,
      username: auth.info.nickname
    )
  end
end
