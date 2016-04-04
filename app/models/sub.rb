class Sub < ActiveRecord::Base
	self.primary_key = 'adsh'
	has_many :nums

	def self.search(search)
	  where("name LIKE ?", "%#{search}%") 
	  where("content LIKE ?", "%#{search}%")
	end
end