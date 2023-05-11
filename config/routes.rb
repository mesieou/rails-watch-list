Rails.application.routes.draw do
  resources :lists, except: [ :edit, :update, :destroy ] do
    resources :bookmarks, only: [ :new, :create]
  end
  delete 'bookmarks/:id', to: 'bookmarks#destroy', as: :bookmark
end
