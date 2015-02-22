Rails.application.routes.draw do
  get 'welcome/index'

  #Index displays our articles so plural 'articles' makes sense
  get 'articles' => 'articles#index', as: :articles
  #New_'article' as _path makes sense
  get 'articles/new' => 'articles#new', as: :new_article
  #We show current @article after editing/creating; so 'article' _path makes sense
  get 'articles/:id' => 'articles#show', as: :article
  #Create can share its 'articles' path with our Index; rails knows to differentiate a POST action
  post 'articles' => 'articles#create'
  get 'articles/edit' => 'articles#edit', as: :edit_article
  get 'articles/destroy' => 'articles@destroy'

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

