class User < ApplicationRecord
  has_secure_password

  # validates_presence_of :email
  # validates_uniqueness_of :email
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  
  validates :password, presence: true, length: { minimum: 3 }
  validates :password_confirmation, presence: true

end
