class UploadFileJob < ActiveJob::Base
  include Uploads
  require 'pry-rails'

  queue_as :default

  def perform(file)
    return unless file.is_a?(String)

    Uploads::File.new(file).call
  end
end