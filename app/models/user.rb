class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_one :wishlist, dependent: :destroy
	has_one :cart, dependent: :destroy

# if you create a user, make sure the user has an email.
	validates :email, presence: true, uniqueness: true
# uniqueness allows user to have only 1 email, so that accounts are separate. 


	# validates that there is a password entered

	validates :password , presence: true, confirmation: true,  length: {in: 8..32}
	# validates :password_confirmation, presence: true
	validates :fname, length: {maximum: 20}
end
