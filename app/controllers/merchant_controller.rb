class MerchantController < ApplicationController
  def index
    @merchants = Merchant.order(:name)
  end
end
