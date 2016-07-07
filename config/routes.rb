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

  get 'boxes/:id/remove_photo', to: 'boxes#remove_photo', as: 'remove_photo_box'
  get 'items/:id/remove_photo', to: 'items#remove_photo', as: 'remove_photo_item'

  get 'items/item_dropdown', to: 'items#item_dropdown', as: 'item_dropdown'
  get 'movements/box_dropdown', to: "movements#box_dropdown", as: "box_dropdown"
  get "university_contacts/contact_dropdown", to: "university_contacts#contact_dropdown", as: "contact_dropdown"
  get "embed_code_universities/university_dropdown", to: "embed_code_universities#university_dropdown", as: "university_dropdown"

  get 'university_contacts/:contact_id/embed_code_universities', to: 'university_contacts#embed_code_universities'
  get 'embed_code_universities/:university_id/university_contacts', to: 'embed_code_universities#university_contacts'

  post 'embed_code_universities/add_contact', to: 'embed_code_universities#add_contact'
  post 'university_contacts/add_university', to: 'university_contacts#add_university'

  post 'embed_code_universities/:contact_id/remove_contact', to: 'embed_code_universities#remove_contact'
  post 'university_contacts/:university_id/remove_university', to: 'university_contacts#remove_university'

  get 'embed_code_universities/new/:contact_id', to: 'embed_code_universities#new'
  get 'university_contacts/new/:university_id', to: 'university_contacts#new'

  delete 'events/remove_university_from_event', to: 'events#remove_university_from_event', as: 'remove_university_from_event'

  get 'events/generate_code', to: 'events#generate_code', as: 'generate_code'
  get 'events/show_code', to: "events#show_code", as: 'show_code'
  get 'embed_codes/:id/get_variables', to: "embed_codes#get_variables", as: 'get_variables'
  post 'events/:events_university_id/add_code', to: "events#add_code", as: "add_code"
  get 'events/edit_event_university', to: "events#edit_event_university", as: "edit_event_university"
  patch 'events/update_events_university', to: "events#update_event_university", as: "update_events_university"

  resources :movements do
    member do
      get 'movement_boxes'
      get 'return'
      post 'add_scans'
      post 'remove_box'
    end
  end
  resources :embed_codes, :embed_code_variables, :events, :software_serials, :softwares, :categories, :products, :items, :users, :locations, :conditions, :university_contacts, :embed_code_universities
  resources :password_resets, only: [:new, :create, :edit, :update]
  # get 'boxes/add_item/:id', to: 'boxes#add_item', as: 'add_item'

  get 'reports', to: 'reports#index', as: 'reports_index'
  get 'reports/boxes_per_movement', to: 'reports#boxes_per_movement_index', as: 'boxes_per_movement_index'
  get 'reports/boxes_per_movement/:id', to: 'reports#boxes_per_movement', as: 'boxes_per_movement'
end
