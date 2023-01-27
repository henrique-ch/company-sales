class Item < ApplicationRecord
  has_and_belongs_to_many :merchant

  def create(rows)
    return if rows.empty?

    rows.each do |row|
      Item.find_or_create_by(description: row[:descrition].gsub("\"", ""), price: row[:price])
    end
  end
end
