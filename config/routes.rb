Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'

  get '/corgis', to: 'corgis#index'
  get '/corgis/new', to: 'corgis#new', as: :new_corgi
  post '/corgis', to: 'corgis#create'
  get '/corgis/:id', to: 'corgis#show', as: :corgi
  get '/corgis/:id/edit', to: 'corgis#edit', as: :edit_corgi
  patch '/corgis/:id', to:'corgis#update'
  put '/corgis/:id', to: 'corgis#update'
  delete '/corgis/:id', to: 'corgis#destroy'
end
