class User < ApplicationRecord
	has_one :wishlist, dependent: :destroy
	has_one :cart, dependent: :destroy
end
