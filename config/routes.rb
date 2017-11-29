Rails.application.routes.draw do
  root 'billboard#index'

  resources :billboards do
    resources :songs
  end

  resources :artists do
    resource :songs
  end


end
