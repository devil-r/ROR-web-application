class AddColumnProblemStatus < ActiveRecord::Migration[5.2]
  def change
    add_column :complain_lists, :problem_status, :string ,default:"pending"
  end
end
