Rails.application.routes.draw do
  resources :group_members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'group_members#index'

  get 'admin' => 'group_members#admin', as: :admin

  # devise_scope :admin do
  #   get 'admin/logout' => 'devise/sessions#destroy'
  #   get 'admin/login' => 'devise/sessions#new'
  #   post 'admin/login' =>  'devise/sessions#create'
  # end

  # devise_for :admin, path_names: {
  #     sign_in: 'login', sign_out: 'logout'
  # }

  devise_for :admin, :skip => [:sessions, :passwords]
  as :admin do
    get 'admin/login' => 'devise/sessions#new', :as => :new_admin_session
    post 'admin/login' => 'devise/sessions#create', :as => :admin_session
    get 'admin/logout' => 'devise/sessions#destroy', :as => :destroy_admin_session
  end
end
