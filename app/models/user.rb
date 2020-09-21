class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  
  has_secure_password
  
  VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i
  validates :password, presence: true,
                      length: { minimum: 8, maximum: 32, allow_blank: true },
                      format: {
                        with: VALID_PASSWORD_REGEX
                      },
                      allow_blank: true
                       
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
end
