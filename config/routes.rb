Rails.application.routes.draw do

  resources :images
  resources :news
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'

  get 'group' => 'group_members#index'

  post 'links/save_link'
  post 'links/update_link'
  get 'links/show_links'
  delete 'links/delete_link'

  get 'personal_texts/show'
  post 'personal_texts/save'
  post 'personal_texts/update'
  delete 'personal_texts/delete'

  get 'field_of_study_in_westerdals/show'
  post 'field_of_study_in_westerdals/save'
  post 'field_of_study_in_westerdals/update'
  delete 'field_of_study_in_westerdals/delete'

  get 'bios/show'
  post 'bios/save'
  post 'bios/update'
  delete 'bios/delete'

  get 'educations/show'
  post 'educations/save'
  post 'educations/update'
  delete 'educations/delete'

  get 'skills/show'
  post 'skills/save'
  post 'skills/update'
  delete 'skills/delete'

  get 'work_experiences/show'
  post 'work_experiences/save'
  post 'work_experiences/update'
  delete 'work_experiences/delete'

  resources :group_members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'admin' => 'group_members#admin', as: :admin
  get 'admin/news' => 'news#admin'
  get 'admin/images' => 'images#index'

  devise_for :admin, :skip => [:sessions, :passwords]
  as :admin do
    get 'admin/login' => 'devise/sessions#new', :as => :new_admin_session
    post 'admin/login' => 'devise/sessions#create', :as => :admin_session
    get 'admin/logout' => 'devise/sessions#destroy', :as => :destroy_admin_session
  end
end
