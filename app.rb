require "sinatra"
require_relative "coin_changer_ex.rb"

enable :sessions

get '/' do 
	erb :full_name
end

post '/full_name' do
	session[:first_name] = params[:first_name]
	session[:last_name] = params[:last_name]
	first_name = session[:first_name]
	last_name = session[:last_name]
	redirect '/coins' 
end

get '/coins' do 
	first_name = session[:first_name]
	last_name = session[:last_name]
	erb :coins, locals:{first_name: first_name, last_name: last_name}
end

post '/coins' do
	session[:cents] = params[:cents]
	redirect '/change'
end

get '/change' do
	first_name = session[:first_name]
	last_name = session[:last_name]
	cents = session[:cents]
	session[:results] = coin_changer(cents.to_i)
	p session[:results]
	erb :change, locals:{first_name: first_name, last_name: last_name, cents: cents, results: session[:results]}
end









