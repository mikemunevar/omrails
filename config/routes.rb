Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'


  # To make the routes for signing in and out easier to use. #MDM
  # Note, don''t use hyphens in the path, but you can use underscores #MDM
  as :user do
    get     "signin" =>       'devise/sessions#new'
    delete  "signout" =>      'devise/sessions#destroy'     #Now you can use signout_path #MDM
    get     'signup' =>       'devise/registrations#new'
  end    

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  
  #point to the pages controller that you just made #MDM
  # rails generate controller pages home
  root 'pages#home'
  # a long way to write the above is:  #MDM
  # get '/' => 'pages#home'
  

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Regular routes
  # Point the /about URL to the 'about' page #MDM
  get 'about' => 'pages#about'
  get 'contact-us' => 'pages#contact-us'

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
