get '/auth/failure', to: 'sessions#failure'
root to: 'home#index'
get '/auth/:provider/callback', to: 'sessions#create'
