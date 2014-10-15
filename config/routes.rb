
CyberDojo::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'dojo#index'

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  get 'dojo/index(/:id)' => 'dojo#index'
  get 'dojo/check_id' => 'dojo#check_id', :constraints => { :format => 'json' }
  get 'dojo/enter' => 'dojo#enter', :constraints => { :format => 'json' }
  get 'dojo/re_enter' => 'dojo#re_enter', :constraints => { :format => 'json' }

  get 'setup/show(/:id)' => 'setup#show'
  get 'setup/save' => 'setup#save', :constraints => { :format => 'json' }

  get  'kata/edit(/:id)' => 'kata#edit'
  post 'kata/run_tests(/:id)' => 'kata#run_tests'

  get 'dashboard/show(/:id)' => 'dashboard#show'
  get 'dashboard/progress' => 'dashboard#progress', :constraints => { :format => 'json' }
  get 'dashboard/heartbeat' => 'dashboard#heartbeat', :constraints => { :format => 'json' }

  get 'differ/diff' => 'differ#diff', :constraints => { :format => 'json' }
  get 'forker/fork(/:id)' => 'forker#fork'
  get 'reverter/revert' => 'reverter#revert', :constraints => { :format => 'json' }

  get 'downloader/download(/:id)' => 'downloader#download'

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  #match ':controller(/:action(/:id))(.:format)'

end
