class ChangeDataPictureToPosts < ActiveRecord::Migration[5.1]
  def change
    change_column :posts, :picture, 'json USING CAST(picture AS json)'
  end
end
