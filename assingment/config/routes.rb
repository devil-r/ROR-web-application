Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :complain_lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "complain_lists#index"
end
