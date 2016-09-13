require 'sinatra'
require 'compass'

configure do
  Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config', 'compass.config'))
end

get '/' do
  erb :index
end

get '/game' do
  erb :game
end

get '/stylesheets/:name.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss(:"stylesheets/#{params[:name]}", Compass.sass_engine_options )
end

get '/Mt.AkoomWeb.unity3d' do
	File.read('Mt.AkoomWeb.unity3d')
end

get '/UnityObject2.js' do
	File.read('UnityObject2.js')
end