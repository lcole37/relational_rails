Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/', to: 'welcome#index'

    get '/airports', to:'airports#index'
    get '/airports/:id', to:'airports#show'
    get '/airports/:airport_id/planes', to: 'planes#index'
    get '/planes', to:'planes#index'
    get '/planes/:id', to:'planes#show'
    get '/passengers', to:'passengers#index'
    get '/passengers/:id', to:'passengers#show'
end
