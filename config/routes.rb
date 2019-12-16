Rails.application.routes.draw do
  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs
  resources :posts

  get 'posts/missing', to: 'posts#show'

  root to: 'pages#home'

  get 'query/:else/:another', to: 'pages#something'

end
