class User < ApplicationRecord

  has_many :friends
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #validate that while sign in email must be of format email
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

  #validate that while sign in password all necessary pasword instructions like atleast 1 uppercase , atleast 1 special char atleast 1 number atleas length 8 chars max length 50 chars
  validates :password, format: { with: /\A(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[[:^alnum:]])/x, message: "must contain atleast 1 uppercase, atleast 1 special char, atleast 1 number" }
  validates :password, length: { in: 8..50 }
end
