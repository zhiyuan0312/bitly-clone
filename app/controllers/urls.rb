# require_relative "/../../app/models/url.rb"
require 'byebug'

get '/' do

	@list = Url.all
	erb :"static/index"

end

post '/urls' do
	@url = Url.new(url: params[:long_url], click_count: 0)
	if @url.save
		redirect to '/'
	else
		redirect to '/failed'
	end
	
end

get '/failed' do
	erb :"static/failed"
end

get '/:shorterned_url' do
	# byebug
	original = Url.find_by(shorterned_url: params[:shorterned_url])
	original.click_count += 1
	original.save
	redirect to ("#{original.url}")
	# redirect to '/'
end

