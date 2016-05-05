Rails.application.routes.draw do

  devise_for :users
  root "welcome#index"

    # ARTICLES CONTROLLER
   get "/articles" => "articles#index", as: "articles"
   get "/articles/:id" => "articles#show", as: "article"
   get "/articles/new" => "articles#new", as: "new_article"
   post "/articles" => "articles#create"
   # ADMIN ONLY
   delete "/articles/:id" => "articles#destroy"

   # REVISIONS CONTROLLER
  get "/articles/:id/revisions" => "revisions#index", as: "article_revisions"
  get "/articles/:id/revisions/new" => "revisions#new", as: "new_article_revision"
  # needed to user this custom route since 'article' didn't exist yet
  # get "/revisions/new" => "revisions#new", as: "new_article_revision"
  get "/articles/:article_id/revisions/:id" => "revisions#show", as: "article_revision"
  post "/articles/:id/revisions" => "revisions#create"

  # CATEGORIES CONTROLLER
  get "/categories/:id" => "categories#show", as: "category"
  # USERS CONTROLLER - ADMIN ONLY
  # get "/users/:id" => "users#show", as: "user"
  # put "/users/:id" => "users#update"
  # delete "/users/:id" => "users#destroy"

  #ADMIN CONTROLLER
  get "/admins" => "admins#index", as: "admins"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root "welcome#index"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'


  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
