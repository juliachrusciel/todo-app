require 'bundler'
Bundler.require()

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'todo_database'
)

require './models/todo'

  get '/' do
    erb:index
  end

  # get \api\todos
  # All todos
  get '/api/todos' do
    content_type :json
    todos = Todo.all
    todos.to_json
  end

  # get \api\todos\:id
  # A specific todo
  get '/api/todos/:id' do
    content_type :json
    todo = Todo.find(params[:id].to_i)
    todo.to_json
  end

  # post \api\todos
  # Create a new todo
  post '/api/todos/:id' do
    content_type :json
    todo = Todo.create(params[:todo])
    todo.to_json
  end

  # put \api\todos\:id
  # Update an existing todo
  put '/api/todos/:id' do
    content_type :json
    todo = Todo.find(params[:id].to_i).update(params[:todo])
    todo.to_json
  end
  # patch \api\todos\:id
  # Update an existing todo
  patch '/api/todos/:id' do
    content_type :json
    todo = Todo.find(params[:id].to_i).update(params[:todo])
    todo.to_json
  end

  # delete \api\todos\:id
  # Delete an existing todo
  delete '/api/todos/:id' do
    content_type :json
    Todo.delete(params[:id].to_i)
    {message: 'Success'}.to_json
  end
