class ChangeColumnDefaultUsersPicture < ActiveRecord::Migration[5.1]
  def change
    change_column_default :users, :picture, :''
  end
end
