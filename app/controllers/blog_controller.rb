require 'json'

class BlogController < ApplicationController

	def main
		@posts = Post.all().limit(5)
	end

	def seed
		file = File.read('mybloggingdb-export.json')
		@data_hash = JSON.parse(file)
	end

	def add_post(author, title, content, number)
		# new_post = Post.new(:title => title,
		# 					 :author => author,
		# 					  :description => content,
		# 					   :blog_number => number)
		# new_post.save
		
	end

	helper_method :add_post
end
