Rails.application.routes.draw do
  root "posts#index"

  # basic CRUD endpoints and other features for POSTS, with Comments nested
  resources :posts do
    resources :comments
  end

  # including resources for comments for Update/Delete
  resources :comments
end
