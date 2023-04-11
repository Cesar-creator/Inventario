Rails.application.routes.draw do
  namespace :authentication, path: "", as: "" do
    resources :users, only: [:new, :create, :destroy, :index], path: "/users", path_names: { new: "/new" }
    #get "users", to: "users#index"
    resources :sessions, only: [:new, :create, :destroy], path: "/", path_names: { new: "/" }
  end

  resources :categories, except: :show
  resources :products
  resources :proveedors, except: :show
end
