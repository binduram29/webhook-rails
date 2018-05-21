class HomeController < ShopifyApp::AuthenticatedController
	skip_before_action  :verify_authenticity_token
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
 #    new_webhook = ShopifyAPI::Webhook.new({
	#    topic: "products/update",
	#    address: "https://d4624421.ngrok.io/products", # substitute url with your endpoint
	#    format: "json"
	# })

	# new_webhook.save
	# binding.pry
    @webhooks = ShopifyAPI::Webhook.find(:all)
  end

end
