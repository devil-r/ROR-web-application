class CreateComplainLists < ActiveRecord::Migration[5.2]
  def change
    create_table :complain_lists do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
