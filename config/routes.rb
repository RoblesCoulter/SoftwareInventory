Rails.application.routes.draw do
  root 'welcome#index'
  # get 'user/new'
  # get 'signup' => 'users#new'
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :boxes do
    member do
      get 'box_items'
      post 'add_scans'
    end
  end

  get 'items/:id/remove_photo', to: 'items#remove_photo', as: 'remove_photo_item'
  get 'boxes/:id/remove_photo', to: 'boxes#remove_photo', as: 'remove_photo_box'

  resources :software_serials, :softwares, :movements, :categories, :products, :items, :users
  resources :password_resets, only: [:new, :create, :edit, :update]
  # get 'boxes/add_item/:id', to: 'boxes#add_item', as: 'add_item'
end
