class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable, :omniauthable
  has_many :bookings
  has_many :guides, dependent: :destroy
  has_many :bookings_as_guide, through: :guides, source: :bookings
  validates :name, presence: true

  # omniauth
  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first
    unless user
      user = User.create(
        uid:      auth.uid,
        provider: auth.provider,
        # email:    User.dummy_email(auth),
        # password: Devise.friendly_token[0, 20]
      )
    end
    user
  end
end
