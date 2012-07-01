Meow::Application.routes.draw do
  
  resources :meals do
    resources :orders
  end
  
  root :to => 'meals#index'

end
