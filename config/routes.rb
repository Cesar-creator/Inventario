Rails.application.routes.draw do
  resources :clients
  namespace :authentication, path: "", as: "" do
    resources :users, only: [:new, :create, :destroy, :index], path: "/users", path_names: { new: "/new" }
    #get "users", to: "users#index"
    resources :sessions, only: [:new, :create, :destroy], path: "/", path_names: { new: "/" }
  end

  resources :categories, except: :show
  resources :products do
    member do
      get :new_movement
      post :create_movement
    end
  end
  resources :proveedors, except: :show
end
