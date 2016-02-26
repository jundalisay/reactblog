class Article < ActiveRecord::Base
	enum level: [:bad, :halfbad, :fantastic]
	is_impressionable
	acts_as_commentable

	# def self.search(search)
	# 	if search 
	# 		find(:all, :conditions => ['name LIKE ?', "%#{params[:search]}%"])
 #    	else
 #    		find(:all)
 #    	end
 #    end

	# searchable do
	# 	text :title, :body		
	# end

	# acts_as_taggable
	# acts_as_taggable_on :body

end
