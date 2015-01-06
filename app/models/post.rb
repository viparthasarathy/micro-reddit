class Post < ActiveRecord::Base
	belongs_to :user
	has_many 	 :comments
	
	validates :link, presence: true
	validates :title, presence: true, length: { maximum: 64 }
	validates :user_id, presence: true
end
