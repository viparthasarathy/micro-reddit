class User < ActiveRecord::Base
	validates :name, presence: true, length: {maximum: 20 },
						 uniqueness: { case_sensitive: false }
	validates :email, presence: true 
	validates :password, presence: true, length: {maximum: 20 }

end
