Rails.application.routes.draw do
  namespace :v1, defaults: { format: :json } do
    get :jbuilder, to: 'comparison#jbuilder'
    get :ams, to: 'comparison#ams'
    get :simple, to: 'comparison#simple'

    resources :users, only: :index
  end
end
