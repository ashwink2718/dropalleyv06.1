Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'site#home'
  get 'brands', to: 'site#brands'
  get 'thanks', to: 'site#thanks'
  get 'orderconfirm', to: 'site#orderconfirm'

  resources :users
  resources :orders

end
