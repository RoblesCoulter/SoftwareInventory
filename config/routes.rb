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
      post 'remove_item'
    end
  end

  resources :movements do
    member do
      get 'movement_boxes'
      post 'add_scans'
      post 'remove_box' 
    end
  end
  resources :software_serials, :softwares, :categories, :products, :items, :users
  resources :password_resets, only: [:new, :create, :edit, :update]
  # get 'boxes/add_item/:id', to: 'boxes#add_item', as: 'add_item'
end
