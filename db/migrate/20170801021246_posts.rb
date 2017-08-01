class Posts < ActiveRecord::Migration[5.1]
	def self.up
		create_table :posts do |t|
			t.column :title, :string, :limit => 200, :null => false
			t.column :author, :string, :limit => 32, :null => false
			t.column :description, :string, :limit => 8022, :null => false
			t.column :blog_number, :integer, :null => false
		end
		create_table :comments do |t|
	  		t.column :post_id, :integer, :null => false
	  		t.column :author, :string, :limit => 32
	  		t.column :description, :string, :limit => 300, :null => false
	  		t.column :comment_number, :integer, :null => false
	  	end
	end

	def self.down
		drop_table :posts
		drop_table :comments
	end
end
