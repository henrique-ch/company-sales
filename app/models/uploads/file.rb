module Uploads
  require 'csv'
  require 'pry-rails'

  class File
    attr_accessor :file

    def initialize(file)
      @file = file 
    end

    def call
      save_upload
      save_outher_data
    end

    private 

    def save_upload 
      receita_bruta = 0

      @rows_purchaser = []
      @rows_itens = []
      @rows_merchant = []

      ::File.open(file, "r", headers: true) do |f|
        f.readlines.each_with_index do |line, index|
          columns = line.split("\t")
          next if index == 0
          
          @rows_itens << {descrition: columns[1], price: columns[2]}
          @rows_merchant << {address: columns[4], name: columns[5] }

          @rows_purchaser << columns[0]
          receita_bruta += columns[2].to_f * columns[3].to_i
        end
      end

      file_name = file.gsub(Rails.root.join('public', 'uploads/').to_s, "")

      upload = UploadFile.new
      upload.upload_at = DateTime.now
      upload.nome = file_name
      upload.receita_bruta = receita_bruta  
      upload.path = "public/uploads/#{file}"

      upload.save!
    end

    def save_outher_data
      purchaser = Purchaser.new
      purchaser.create(@rows_purchaser)

      itens = Item.new
      itens.create(@rows_itens)

      merchant = Merchant.new
      merchant.create(@rows_merchant)
    end
  end  
end