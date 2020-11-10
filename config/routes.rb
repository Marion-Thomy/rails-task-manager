Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # See all tasks
  get '/tasks', to: 'tasks#index'
  # Create a new task
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'
  # See details of each task
  get '/tasks/:id', to: 'tasks#show', as: 'task'

  # Update a task
  get '/tasks/:id/edit', to: 'tasks#edit'
  patch '/tasks/:id', to: 'tasks#update'
  # Delete a task
  delete '/tasks/:id', to: 'tasks#destroy'
end
