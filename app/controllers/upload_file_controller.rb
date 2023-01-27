class UploadFileController < ApplicationController
  def upload
    file = params[:file_field_name]
    
    path = Rails.root.join('public', 'uploads')
    Dir.mkdir(path) unless Dir.exists?(path)

    file.original_filename = "#{DateTime.now.to_fs(:number)}-#{file.original_filename}"

    path = Rails.root.join('public', 'uploads', file.original_filename)

    File.open(path, 'wb') do |f|
      f.write(file.read)
    end

    UploadFileJob.perform_later(path.to_path)
    
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Upload feito com sucesso.' }
    end
  end
end
