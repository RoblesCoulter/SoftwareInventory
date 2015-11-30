Rails.application.routes.draw do
  resources :conditions
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
      post 'remove_item'
    end
  end

  get 'items/:id/remove_photo', to: 'items#remove_photo', as: 'remove_photo_item'
  get 'items/item_dropdown', to: 'items#item_dropdown', as: 'item_dropdown'
  get 'boxes/:id/remove_photo', to: 'boxes#remove_photo', as: 'remove_photo_box'


  resources :movements do
    member do
      get 'movement_boxes'
      get 'return'
      post 'add_scans'
      post 'remove_box' 
    end
  end
  resources :software_serials, :softwares, :categories, :products, :items, :users, :locations
  resources :password_resets, only: [:new, :create, :edit, :update]
  # get 'boxes/add_item/:id', to: 'boxes#add_item', as: 'add_item'

  get 'reports', to: 'reports#index', as: 'reports_index'
  get 'reports/boxes_per_movement', to: 'reports#boxes_per_movement_index', as: 'boxes_per_movement_index'
  get 'reports/boxes_per_movement/:id', to: 'reports#boxes_per_movement', as: 'boxes_per_movement'
end
