Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
        resources :countries
        resources :continents
        resources :currencies
        resources :defaults_als
        resources :exchange_rates
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
