Rails.application.routes.draw do
  devise_for :admins
  resources :group_members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'group_members#index'

  get 'admin' => 'group_members#admin', as: :admin

  devise_scope :admin do
    get 'admin/logout' => 'devise/sessions#destroy'
  end

end
