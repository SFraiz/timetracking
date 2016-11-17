Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/', to: 'site#home'
get 'contact', to: 'site#contact'

get '/calculator', to: 'site#calculator'
post '/calculate', to: 'site#calculate'

get '/projects', to: 'projects#index'
get 'projects/new', to: 'projects#new'

get '/projects/:id', to: 'projects#show' #tenemos que poner las rutas por encima para que no confunda con parametros

post '/projects', to: 'projects#create' #lo podemos poner debajo porqué es un post

get '/projects/:project_id/time_entries', to: 'time_entries#index'
get '/projects/:project_id/time_entries/new', to: 'time_entries#new'
post '/projects/:project_id/time_entries', to: 'time_entries#create', as: :project_time_entries

get '/projects/:project_id/time_entries/:id/edit', to: 'time_entries#edit'
patch '/projects/:project_id/time_entries/:id', to: 'time_entries#update', as: :project_time_entry #patch para editar

delete '/projects/:project_id/time_entries/:id', to: 'time_entries#destroy'
end