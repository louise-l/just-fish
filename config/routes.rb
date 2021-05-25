Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get :dashboard, to: "pages#dashboard"
  get :about, to: "pages#about"
  get :products, to: "pages#products"
  
  resources :articles
  resources :recipes
  resources :textboxes, only: [:index, :edit, :update]
  resources :galleries, only: [:index, :edit, :update] do 
    member do
      delete :delete_image_attachement
    end
  end

end
