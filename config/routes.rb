Rails.application.routes.draw do
  resources :line_items
  resources :saveds
  root 'dashboard#index', as: 'dashboard_index'
  resources :jobs
  get 'say/hello'
  get 'say/goodbye'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
