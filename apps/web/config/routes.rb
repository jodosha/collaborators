root to: 'home#index'

get '/organizations',      to: 'organizations#index', as: :organizations
get '/organizations/sync', to: 'organizations#sync',  as: :sync_organizations

get '/auth/:provider/callback', to: 'sessions#create'
get '/auth/failure', to: 'sessions#failure'
