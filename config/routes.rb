Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/index'

  get 'user/all'
  get 'user/one/:id', to: 'user#one'
  post 'user/add'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
