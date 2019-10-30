Rails.application.routes.draw do
  resources :defaults_als
  namespace :api do
    namespace :v1 do
        resources :countries
        resources :continents
        resources :currencies
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
