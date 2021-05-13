Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get :dashboard, to: "pages#dashboard"
  
  resources :articles
  resources :recipes
  resources :galleries, only: [:edit, :update] do 
    member do
      delete :delete_image_attachement
    end
  end

end
