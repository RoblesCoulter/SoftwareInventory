Rails.application.routes.draw do
  root 'welcome#index'
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
  get 'movements/box_dropdown', to: "movements#box_dropdown", as: "box_dropdown"
  get "university_contacts/contact_dropdown", to: "university_contacts#contact_dropdown", as: "contact_dropdown"
  get 'boxes/:id/remove_photo', to: 'boxes#remove_photo', as: 'remove_photo_box'
  get 'university_contacts/:contact_id/embed_code_universities', to: 'university_contacts#embed_code_universities'
  get 'embed_code_universities/:university_id/university_contacts', to: 'embed_code_universities#university_contacts'
  get 'university_contacts/new/:university_id', to: 'university_contacts#new'
  get 'embed_code_universities/new/:contact_id', to: 'embed_code_universities#new'
  resources :movements do
    member do
      get 'movement_boxes'
      get 'return'
      post 'add_scans'
      post 'remove_box'
    end
  end
  resources :software_serials, :softwares, :categories, :products, :items, :users, :locations, :conditions, :university_contacts, :embed_code_universities
  resources :password_resets, only: [:new, :create, :edit, :update]
  # get 'boxes/add_item/:id', to: 'boxes#add_item', as: 'add_item'

  get 'reports', to: 'reports#index', as: 'reports_index'
  get 'reports/boxes_per_movement', to: 'reports#boxes_per_movement_index', as: 'boxes_per_movement_index'
  get 'reports/boxes_per_movement/:id', to: 'reports#boxes_per_movement', as: 'boxes_per_movement'
end
