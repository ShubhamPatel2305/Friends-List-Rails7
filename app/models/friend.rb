class Friend < ApplicationRecord

  #if user submits a friend with same insta as alreadyexisting friend then dont accept and give error
  validates :insta, uniqueness: true
  validates :email, uniqueness: true
  validates :contact, uniqueness: true

  #validate name is min 3 max 25 
  validates :name, presence: true, length: { minimum: 3, maximum: 25 }
  #validate email is correct 
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  #validate contact is 10 exact
  validates :contact, presence: true, length: { is: 10 }
  #validate insta is present
  validates :insta, presence: true
end
