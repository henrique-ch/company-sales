class PurchaserController < ApplicationController
  def index
    @purchaser = Purchaser.order(:name)
  end
end
