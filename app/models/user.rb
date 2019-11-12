class User < ApplicationRecord
  CUISINES = ["Israeli", "Japanese", "Italian", "Thai", "Chinese", "Mexican", "Greek", "Chinese", "French", "Korean", "Indian", "Spanish"].freeze
  INTERESTS = ["Swim", "Cook", "Bake", "Read", "Travel", "Run", "Draw", "Play piano", "Write", "Meet new people"].freeze
  RESTRICTIONS = ["Gluten-Free", "Lactose-Free", "Vegetarian", "Kosher", "Vegan"].freeze
  has_many :messages, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  devise :omniauthable, omniauth_providers: [:facebook]

  acts_as_votable
  acts_as_voter
  acts_as_taggable
  acts_as_taggable_on :cuisines, :interests, :restrictions

  # geocoder
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

  def self.all_except(user)
    where.not(id: user)
  end

  def matched?(user2)
    self.liked? user2
  end

  def random_user
    @users = User.all_except(current_user)
  end
  # this is for the redirection of new user or already registered user
  def full_profile?
    !self.cuisine_list.empty?
  end

  def self.find_for_facebook_oauth(auth)
    user_params = auth.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:facebook_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
    user_params = user_params.to_h

    user = User.find_by(provider: auth.provider, uid: auth.uid)
    user ||= User.find_by(email: auth.info.email) # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end

    return user
  end

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
end
