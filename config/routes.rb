Rails.application.routes.draw do
  resources :listrfcs
  resources :profile_lists
  resources :user_apps

  resources :credits
  get 'charges/index'

  post 'charges/create'

  get 'charges/show'

  resources :myrfcs
  resources :empresas
  #devise_for :businesses
  resources :listrfcs
  namespace :api do
    namespace :v1 do
      #resources :report
      resources :get_profile_list, path: "personal_data"
      resources :get_rfc_list, path: "rfc"
      resources :get_comercio, path: "comercio"
      resources :get_rfc_id, path: "rfc_id"
      resources :get_personal_id, path: "personal_id"
      resources :delete_personal_id, path: "delete_personal"
      resources :delete_rfc_id, path: "delete_rfc"
      resources :compartir_rfc, path: "compartir_rfc"
      resources :crear_personal_data, path: "crear_personal_data"
      resources :crear_rfc, path: "crear_rfc"
      #resources :get_rfc_detalles, path: "detalles"
      resources :get_user_app, path: "get_user"
      resources :crear_user_app, path: "create_user"
      

    end
  end



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
