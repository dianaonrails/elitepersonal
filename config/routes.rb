Rails.application.routes.draw do
  get 'clients/new'

  get 'clients/create'
  
  
  resources :categories
  devise_for :users, ActiveAdmin::Devise.config
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'candidates/show_pdf'
  get 'candidates_suggestions' => 'active_admin/client_requests#candidates_suggestions'
  
  #devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
    root 'public#index'
    get 'mission' => 'public#mission'
    get 'history' => 'public#history'
    get 'services' => 'public#services'
    get 'contacts' => 'public#contacts'
    get 'conditions' => 'public#conditions'
    get 'client' => 'public#client'
    get 'login' =>'candidates#login'

    get 'personal_area' =>'public#personal_area'

    match 'send_mail', to: 'admin/client_requests#send_mail', via: 'post'
    #get 'vacancies' => "public#vacancies"
    
    devise_for :candidates, :controllers => { :registrations => "candidates/registrations", :sessions => "candidates/sessions" }
    devise_scope :candidate do
      get 'candidates/sessions', to: 'sessions#sign_in', as:'sign_in'
      #patch 'members/confirmation' => 'confirmations#update', :via => :patch, :as => :update_member_confirmation
    end

    get 'nanny_questions' => 'registrations#nanny_questions'

    resources :candidates
    
    
    get 'update_category' => 'vacancies#update_category'
    
    resources :vacancies do
      collection do
        get 'update_category'
      end  
    end  
    resources :client_requests
    resources :applications do
      collection do
        get :application_candidate
      end 
    end
    resources :interviews do
      collection do
        get :interviews_candidate
      end
    end  

    get 'update_questions' => 'category_questions#update_questions'

    resources :category_questions do
      collection do
        get :update_questions
      end  
    end

    resources :clients  

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
