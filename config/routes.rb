Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  resources :quotes
  resources :line_item_dates, expect: [:index, :show]
end
