Rails.application.routes.draw do
  get 'merchant/index'
  get 'itens/index'
  get 'purchaser/index'
  root "home#index"

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } 
  
  post 'upload', action: :upload, controller: :upload_file
end
