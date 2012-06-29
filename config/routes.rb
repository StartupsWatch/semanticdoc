Semanticdoc::Application.routes.draw do
  root :to => "home#index"
  resources :semantic_schemas
  namespace :admin do
    resources :semantic_schemas
    get "/" => "home#index", as: :panel
  end
end
