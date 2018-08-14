Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  resources :histories
  get 'users/histories', to: 'histories#user_histories'
  root "histories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
