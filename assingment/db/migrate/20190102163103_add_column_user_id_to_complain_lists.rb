class AddColumnUserIdToComplainLists < ActiveRecord::Migration[5.2]
  def change
    add_column :complain_lists, :user_id, :integer
  end
end
