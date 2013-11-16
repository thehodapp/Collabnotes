class User < ActiveRecord::Base

  has_many :notes
  
  before_save { self.email.downcase! }
  before_save { self.username.downcase! }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true
  validates :password, length: { minimum: 8 }
  validates :username, presence: true
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

end
