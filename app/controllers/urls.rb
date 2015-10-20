# require_relative "/../../app/models/url.rb"
require 'byebug'

get '/' do

	@list = Url.all
	erb :"static/index"

end

post '/urls' do
	@url = Url.create(url: params[:long_url])
	@list = Url.all
	erb :"static/index"
end

get '/:shorterned_url' do

	original = Url.find_by(shorterned_url: params[:shorterned_url])
	redirect to ("#{original.url}")
	# redirect to '/'
end

