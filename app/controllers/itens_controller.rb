class ItensController < ApplicationController
  def index
    @itens = Item.order(:description)
  end
end
