Rails.application.routes.draw do
  resources :portafolios, except: [:show]
  get 'portafolio/:id', to: 'portafolios#show', as: 'portafolio_show'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'

end
