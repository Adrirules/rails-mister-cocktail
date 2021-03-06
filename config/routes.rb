Rails.application.routes.draw do
root "cocktails#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:create, :index, :show, :new] do
    resources :doses, only: [:new, :create,]
  end
  resources :doses, only: [:destroy]
end
