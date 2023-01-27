class Purchaser < ApplicationRecord

  def create(rows)
    return if rows.empty?

    rows.each do |name|
      Purchaser.find_or_create_by(name: name.gsub("\"", "") )
    end
  end
end
