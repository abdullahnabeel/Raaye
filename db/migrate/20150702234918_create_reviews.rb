class CreateReviews < ActiveRecord::Migration
  def up
    create_table :reviews do |t|
    	t.integer "user_id"
    	t.integer "commercial_entity_id"
    	#Foreign Keys

    	
    	t.integer "rating", :null => false #Add Validation in Model to check range 0-9
    	t.text "comment", :default => nil
    	t.timestamps
    end
    add_index("reviews", "user_id")
    add_index("reviews", "commercial_entity_id")
  end

  def down
  	drop_table :reviews
  end
end
