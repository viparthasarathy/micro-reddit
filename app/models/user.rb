class User < ActiveRecord::Base
	has_many :posts
	has_many :comments

	validates :name,     presence: true, length: {maximum: 20 },
									     uniqueness: { case_sensitive: false }
	validates :email,    presence: true 
	validates :password, presence: true, length: {maximum: 20 }
end
