RealEstate::Application.routes.draw do
  
  root :to => 'items#index'
  
  resources :items do
    get :upvote, on: :member
    get :expensive, on: :collection
  end

end
