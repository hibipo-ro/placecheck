class RemoveLabelFromPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :label1, :string
    remove_column :posts, :label2, :string
    remove_column :posts, :label3, :string
    remove_column :posts, :label4, :string
    remove_column :posts, :label5, :string
  end
end
