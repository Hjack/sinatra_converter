require 'sinatra'

def pounds_to_ounces(pounds)
	pounds * 16.0
end

def ounces_to_pounds(ounces)
	ounces / 16.0
end

get '/' do
	erb :index
end

get '/convert' do
	if params[:measurement]=="ounces"
		@value = params[:amount].to_i
		@conversion = ounces_to_pounds(@value)
		erb :home
	else
		@value = params[:amount].to_i
		@conversion = pounds_to_ounces(@value)
		erb :home
	end
end


