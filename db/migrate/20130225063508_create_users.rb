class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
    	t.string "username", :limit => 20
    	t.string "password", :limit => 20
    	t.string "email", :limit => 40
    	t.boolean "authorized", :default => true
      t.timestamps
    end
  end
  
  def self.down 
  	drop_table :users
  end
  
end
