Rails.application.routes.draw do
#read information
  #read all the tasks
#   get "tasks", to: "tasks#index"
# #create a task :
#   # get the form for new task
#   get "tasks/new", to: "tasks#new"
#   #read one task :
#   get "tasks/:id", to: "tasks#show"

#   # create a task from form data
#   post "tasks", to: "tasks#create"
# #update a task :
#   #get the form from existing task
#   get "tasks/:id/edit", to:"tasks#edit"
#   #update task from form data:
#   patch "tasks/:id", to: "tasks#update"
#   #delete
#   delete "tasks/:id", to: "tasks#destroy"

resources :tasks

end

