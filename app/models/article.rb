class Article < ActiveRecord::Base
	validates :title, presence: true
	enum level: [:bad, :halfbad, :fantastic]
end
