require 'uri'

class Url < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	validates :url, presence: true, :format => {:with => URI.regexp}
	before_create :shorten

	# attr_assessor: url

	def shorten
		self.shorterned_url = (0...7).map { ('a'..'z').to_a[rand(26)] }.join
	end

	# def self.validate_input(input)
	#     row = Url.new(url: input)
	#     row.valid?
	#     p "[ERROR MESSAGES ON VALIDATION]"
	#     p row.errors.messages
	#     row.errors.messages
 #  	end

end
