class CreateItemsMerchants < ActiveRecord::Migration[7.0]
  def change
    create_table :items_merchants do |t|
      t.belongs_to :merchant
      t.belongs_to :item
      t.timestamps
    end
  end
end
