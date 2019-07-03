class ChangeColumnToUserPicture < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :picture, :string
  end
end
