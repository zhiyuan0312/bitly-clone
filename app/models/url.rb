class Url < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!

	before_save :shorten

	# attr_assessor: url

	def shorten
		self.shorterned_url = (0...7).map { ('a'..'z').to_a[rand(26)] }.join
	end

	# def list
	# 	self.all
	# end

end
