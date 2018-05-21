Rails.application.routes.draw do
  resources :products
  root :to => 'home#index'
  mount ShopifyApp::Engine, at: '/'
  post '/home/product_updated_webhook' => "home#product_updated_webhook", :as => :product_updated_webhook
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
