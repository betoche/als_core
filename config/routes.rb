Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
        get '/exchange_rates/convert/', to: "exchange_rates#convert"

        resources :countries
        resources :continents
        resources :currencies
        resources :defaults_als
        resources :exchange_rates
        resources :document_types
        resources :document_type_by_countries
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
