Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'welcome#index'
  get '/shelters', to: 'shelters#index'
  get '/shelters/new', to: 'shelters#new'
  post '/shelters', to: 'shelters#create'
  get '/shelters/:id', to: 'shelters#show'
  get '/shelters/:id/edit', to: 'shelters#edit'
  patch '/shelters/:id', to: 'shelters#update'
  delete '/shelters/:id', to: 'shelters#destroy'

  get '/shelters/:shelter_id/pets', to: 'shelter_pets#index'
  get '/shelters/:shelter_id/pets/new', to: 'shelter_pets#new'

  get '/shelters/:shelter_id/reviews/new', to: "reviews#new"
  post '/shelters/:shelter_id', to: 'reviews#create'
  get '/shelters/:shelter_id/reviews/:id/edit', to: 'reviews#edit'
  patch '/shelters/:shelter_id/reviews/:id', to: 'reviews#update'
  delete '/shelters/:shelter_id/reviews/:id', to: 'reviews#destroy'

  get '/pets', to: 'pets#index'
  get '/pets/:id', to: 'pets#show'
  get '/pets/:id/edit', to: 'pets#edit'
  post '/shelters/:shelter_id/pets', to: 'pets#create'
  patch '/pets/:id', to: 'pets#update'
  delete '/pets/:id', to: 'pets#destroy'

  post '/favorites/:pet_id', to: 'favorites#create'
  get '/favorites', to: 'favorites#index'
  delete '/favorites/:pet_id', to: 'favorites#destroy'
  delete '/favorites', to: "favorites#remove_all"

  get '/applications/pets/:id', to: "applications#index"
  get '/applications/new', to: 'applications#new'
  post '/applications', to: 'applications#create'
  get '/applications/:id', to: 'applications#show'
  patch 'applications/:application_id/pets/approve_all', to: 'applications#approve_all'
  patch '/applications/:application_id/pets/:pet_id/approve', to: 'applications#approve_pet'
  patch '/applications/:application_id/pets/:pet_id/unapprove', to: 'applications#unapprove_pet'
end
