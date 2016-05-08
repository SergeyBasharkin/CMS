Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, controllers: {registrations: 'user/registrations',
                                   sessions: 'user/sessions',confirmations: 'user/confirmations',passwords: 'user/passwords'}
  resources :pages

  get "/test", to: "pages#test"

   delete "/pages/:id/versions/:ver" ,to: "versions#destroy", as: "versions_destroy"
   get "/pages/:id/version/:ver", to: "versions#show", as: "version"
   get "/pages/:id/version/accept/:ver", to: "versions#accept", as: "versions_accept"
  root to: "pages#home"
end
