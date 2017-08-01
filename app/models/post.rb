class Post < ApplicationRecord
	has_many :comments
	validates_presence_of :title
	validates_presence_of :description
	validates_presence_of :author
	validates_numericality_of :blog_number
end
