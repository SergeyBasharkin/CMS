Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users

  resources :pages

  get "/test", to: "pages#test"
  root to: "pages#home"
end
