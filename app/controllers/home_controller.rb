class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    pagina = params[:page] || 1 

    @uploads = UploadFile.all.page(pagina)
  end
end
