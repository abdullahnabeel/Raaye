class User < ActiveRecord::Base
	has_many :buisnesses
	has_many :reviews
	has_many :review_ratings
end
