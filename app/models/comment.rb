class Comment < ActiveRecord::Base
	# belongs_to :commentable, polymorphic: true
	belongs_to :article, :foreign_key => 'article_id'
end
