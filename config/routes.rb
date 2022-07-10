Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/parents', to:'airports#index'
    get '/parents/:id', to:'airports#show'
    get '/child_table_name', to:'planes#index'
    get '/child_table_name/:id', to:'planes#show'
    
    # get '/parents/:parent_id/child_table_name', to:''
    #
    # get '/parents/:id', to:''

end
