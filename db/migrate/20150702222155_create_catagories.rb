class CreateCatagories < ActiveRecord::Migration
  def up
  	create_table :catagories do |t|
    	t.column "name", :string, :null => false, :limit => 20
    	t.column "description", :text, :default => nil
        t.timestamps
    end
 end


    def down
    	drop_table :catagories
    end
  
end