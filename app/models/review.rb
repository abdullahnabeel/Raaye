class Review < ActiveRecord::Base
	belongs_to :business
	has_many :review_ratings, dependent: :destroy
end
