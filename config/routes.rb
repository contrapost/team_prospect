Rails.application.routes.draw do

  get 'personal_texts/show'

  get 'personal_texts/save'

  get 'personal_texts/update'

  get 'personal_texts/delete'

  get 'field_of_studies/show'

  get 'field_of_studies/save'

  get 'field_of_studies/update'

  get 'field_of_studies/delete'

  get 'bios/show'

  get 'bios/save'

  get 'bios/update'

  get 'bios/delete'

  get 'educations/show'

  get 'educations/save'

  get 'educations/update'

  get 'educations/delete'

  get 'skills/show'

  get 'skills/save'

  get 'skills/update'

  get 'skills/delete'

  get 'work_experiences/show'

  get 'work_experiences/save'

  get 'work_experiences/update'

  get 'work_experiences/delete'

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
