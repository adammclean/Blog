Rails.application.routes.draw do
  get 'welcome/index'

  #INDEX - display a list of all photos
  get 'articles' => 'articles#index', as: :articles
  #NEW - return an HTML form for creating a new photo
  get 'articles/new' => 'articles#new', as: :new_article
  #CREATE - create a new photo
  post 'articles' => 'articles#create'
  #SHOW - display a specific photo, hence :id
  get 'articles/:id' => 'articles#show'
  #EDIT - return an HTML form for editing a photo
  get 'articles/:id/edit' => 'articles#edit', as: :edit_article
  #UPDATE - update a specific photo
  get 'articles/:id' => 'articles#update'
  #DELETE - delete a specific photo
  get 'articles/:id/destroy' => 'articles#destroy', as: :destroy_article

 
  # resources :articles

  root 'welcome#index'
end
 

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  

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

