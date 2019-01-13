class AddColumnmPriceToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :price, :bigint
  end
end
