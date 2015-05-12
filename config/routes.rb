Rails.application.routes.draw do
  get 'contratantes/cpf/:cpf', to: 'contratantes#cpf'
  get 'contratantes/new/:cadastro_id', to: 'contratantes#new', as: "new_contratante"
  post 'contratantes/:cadastro_id', to: 'contratantes#create', as: "contratantes"

  get 'filtro/index'

  post 'filtro', to: 'filtro#create'
  get 'filtro', to: 'filtro#create'

  get 'falecidos/new/:cadastro_id', to: 'falecidos#new', as: "new_falecido"
  post 'falecidos/:cadastro_id', to: 'falecidos#create', as: "falecidos"

  get 'dados_obitos/new/:cadastro_id', to: 'dados_obitos#new', as: "new_dados_obito"
  post 'dados_obitos/:cadastro_id', to: 'dados_obitos#create', as: "dados_obitos"

  get 'produtos/new/:cadastro_id', to: 'produtos#new', as: "new_produto"
  post 'produtos/:cadastro_id', to: 'produtos#create', as: "produtos"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'filtro#index'

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