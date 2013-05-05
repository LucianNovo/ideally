class CreateIdeas < ActiveRecord::Migration

 def self.up
    create_table :ideas do |t|
    	t.string "permalink"
    	t.integer "idea_id"
    	t.boolean "visible", :default => false
    	t.string "idea", :limit => 250
    	t.string "title", :limit => 144
    	t.text "description", :limit => 800
    	t.integer "ticket"
    	t.integer "timeAlloted"
    	t.string "tags", :limit => 50
    	t.integer "upvote", :defualt => 0
      t.timestamps
    end
    add_index("ideas","idea_id")
    add_index("ideas","permalink")
 end
 
 def self.down 
  	drop_table :ideas
 end

end
