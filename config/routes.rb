Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: %i[new create show]
    resources :ingredients, only: [:new, :create, :show]
  end
  resources :doses, only: :destroy
end
