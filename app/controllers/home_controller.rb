class HomeController < ApplicationController
  before_action :login_again_if_different_shop
  around_filter :shopify_session
  layout 'embedded_app'

  def index
    #@products = ShopifyAPI::Shop.find(:all, :params => {:limit => 10})
    @products = ShopifyAPI::Product.find :all
  end

end
