class CreateReviewRatings < ActiveRecord::Migration
  def up
    create_table :review_ratings, :id => false do |t|
    	t.integer "review_id"
    	t.integer "user_id"
    	#Foreign Keys

    	t.integer "rating", :null => false #add validation check for the value to be 0-9 in model

        t.timestamps
    end
    add_index("review_ratings", "review_id")
    add_index("review_ratings", "user_id")
  end

  def down
  	drop_table :review_ratings
  end
end
