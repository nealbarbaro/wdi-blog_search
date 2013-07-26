WdiBlogSearch::Application.routes.draw do
  get 'search' => 'articles#index', :as => "search"

  resources :comments
  resources :articles

  root :to => 'articles#index'
end
