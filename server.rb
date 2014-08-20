require 'sinatra'
require 'erb'
#\/ specifies that the files are on the 'public' directory, but this is the default already.
set :public_folder, File.dirname(__FILE__) + '/public'
set :views, File.dirname(__FILE__) + '/views'

get '/tasks/:task_name' do
  @task= params[:task_name] #the :task_name is in the params hash.
  erb :task
end
