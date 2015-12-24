class User < ActiveRecord::Base
	has_secure_password
	has_many :models, dependent: :destroy
	has_many :orders
end
