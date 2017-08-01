class Comment < ApplicationRecord
	belongs_to :post
	validates_presence_of :author
	validates_presence_of :description
	validates_numericality_of :comment_number
end
