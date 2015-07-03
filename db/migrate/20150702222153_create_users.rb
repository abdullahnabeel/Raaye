class CreateUsers < ActiveRecord::Migration

  def up

    create_table :users do |t|
    	t.column "username", :string, :null => false, :limit => 20
    	t.column "password", :string, :null => false, :limit => 20
    	t.column "first_name", :string, :null => false, :limit => 20
    	t.column "last_name", :string, :null => false, :limit => 20
    	t.column "email", :string, :null => false
    	t.column "phone_number", :string, :limit => 14
        t.timestamps
    end
 end


    def down
    	drop_table :users
    end
  
end
