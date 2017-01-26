require 'sinatra'
require 'make_todo'

get '/' do
	@notes = Tarea.all
 	@title = 'Lista de cosas por hacer - App'
  	erb :home
end  

post '/' do
  Tarea.create(params[:content].capitalize)
  redirect '/'
end