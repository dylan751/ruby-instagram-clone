class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:github]
         
  mount_uploader :image, ImageUploader
  has_many :posts
  has_many :likes

  def full_name
      "#{first_name} #{last_name}"
  end
  
  def total_followers
    Follower.where(following_id: self.id).count    
  end
  
  def total_following
    Follower.where(follower_id: self.id).count
  end

  # def self.from_omniauth(auth)
  #   name_split = auth.info.name.split(" ")
  #   account = Account.where(email: auth.info.email).first
  #   account ||= Account.create!(provider: auth.provider, uid: auth.uid, last_name: name_split[0], first_name: name_split[1], email: auth.info.email, password: Devise.friendly_token[0, 20])
  #     account
  # end
  
  def self.from_omniauth(access_token)
    data = access_token.info
    account = Account.where(email: data['email']).first

    unless account
      account = Account.create(username: data['name'],
        email: data['email'],
        password: "password",
        image: data['image']
      )
    end
    account
end

end
