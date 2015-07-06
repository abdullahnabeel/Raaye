class Catagory < ActiveRecord::Base
	has_many :businesses, dependent: :destroy
end
