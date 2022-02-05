class User < ApplicationRecord
  has_secure_password

  has_many :tweets, dependent: :destroy

  before_save { self.email = email.downcase }


  validates :email, presence: true, uniqueness: { case_sensitive: false }
  
  validates :password, presence: true, length: { minimum: 3 }
  validates :password_confirmation, presence: true

end
