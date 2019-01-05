class AddColumnStatusToComplainLists < ActiveRecord::Migration[5.2]
  def change
    add_column :complain_lists, :status, :integer ,default:0
  end
end
