class CreateCommercialEntities < ActiveRecord::Migration
  def up
    create_table :commercial_entities do |t|
    	t.integer "user_id"
    	#Foreign Key

    	t.string "name", :limit => 100, :null => false
    	t.string "email", :null => false, :limit => 100
    	t.string "phone_number", :limit => 14
		t.timestamps
    end

   	add_index("commercial_entities", "user_id")
  end

  def down
    	drop_table :commercial_entities
  end
end
