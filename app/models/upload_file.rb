class UploadFile < ApplicationRecord

  validates :nome, presence: true
  validates :path, presence: true

  def receita_bruta_total
    UploadFile.sum(:receita_bruta) 
  end
end
