class User < ApplicationRecord
  # before_save { self.email = email.downcase }
  before_save { email.downcase! }
  has_many :microposts
  validates :name, presence: true, length: { maximum: 50 }
  # could use brackets or not
  # passing in three perameters - name (symbol), presence (hash), length is a hash that contains an object that contains a hash
  # objects can contain hashes!
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
  # has_secure_password has built in functionality:
  # - ability to save a securely hashed password_digest attribute to the database
  # - a pair of virtual attributes (password and password_confirmation) including presence validations upon object creation 
  # and a validation requiring that they match
  # an authenticate method that returns the user when the password is correct (and false otherwise)
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
