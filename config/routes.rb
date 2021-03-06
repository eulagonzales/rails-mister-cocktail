Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: %w[index new show create] do
    resources :doses, only: %w[new create]
  end
  resources :doses, only: ['destroy']
end