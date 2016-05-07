Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, controllers: {registrations: 'user/registrations',
                                   sessions: 'user/sessions',confirmations: 'user/confirmations',passwords: 'user/passwords'}
  resources :pages

  get "/test", to: "pages#test"

  get "/pages/:id/version/:ver", to: "pages#prev_version"
  root to: "pages#home"
end
