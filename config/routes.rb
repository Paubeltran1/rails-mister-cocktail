Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'cocktails#index'
  resources :cocktails, only: %i[index new create show] do
    resources :doses, only: %i[new create destroy], shallow: true
  end
  resources :search, only: %i[index]
end
