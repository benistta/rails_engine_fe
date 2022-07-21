class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all_merchants
  end

  def show
    @merchant = MerchantFacade.merchant(params[:id])
    # require "pry"; binding.pry
    @items = MerchantFacade.merchant_items(params[:id])
    # require "pry"; binding.pry
  end
end
