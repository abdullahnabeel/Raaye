class CreateBuisnesses < ActiveRecord::Migration
  def up
    create_table :buisnesses do |t|
    	t.integer "user_id"
      t.integer "catagory_id"
    	#Foreign Key

    	t.string "name", :limit => 100, :null => false
    	t.string "email", :null => false, :limit => 100
    	t.string "phone_number", :limit => 14
		t.timestamps
    end

   	add_index("buisnesses", "user_id")
  end

  def down
    	drop_table :buisnesses
  end
end
