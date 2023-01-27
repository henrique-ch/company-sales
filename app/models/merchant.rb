class Merchant < ApplicationRecord
  has_and_belongs_to_many :item
  
  def create(rows)
    return if rows.empty?
    
    rows.each do |row|
      Merchant.find_or_create_by(address: row[:address].gsub("\"", ""), name: row[:name].gsub("\"", ""))
    end
  end
end
