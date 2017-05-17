Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :movies do
    member do
      put "like" => "movies#upvote"
      put "unlike" => "movies#downvote"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
