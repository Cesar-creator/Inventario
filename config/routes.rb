Rails.application.routes.draw do
  namespace :authentication, path: "", as: "" do
    resources :users, only: [:new, :create], path: "/register", path_names: { new: "/" }
    resources :sessions, only: [:new, :create, :destroy], path: "/", path_names: { new: "/" }
  end

  resources :categories, except: :show
  resources :products
  resources :proveedors, except: :show
end
