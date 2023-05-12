Rails.application.routes.draw do
  resources :lists, except: [ :edit, :update ] do
    resources :bookmarks, only: [ :new, :create]
  end
  delete 'bookmarks/:id', to: 'bookmarks#destroy', as: :bookmark
  root to: 'lists#index'
end
