Rails.application.routes.draw do

  resources :lists, only: [:index, :new, :show, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  root to: 'lists#index'
  delete '/bookmarks/:id', to: 'bookmarks#destroy', as: 'bookmark'
end
