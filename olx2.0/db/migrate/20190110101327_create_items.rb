class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.string :name
      t.bigint :phno
      t.string :city

      t.timestamps
    end
  end
end
