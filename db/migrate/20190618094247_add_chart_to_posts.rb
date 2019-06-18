class AddChartToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :title, :string
    add_column :posts, :label1, :string
    add_column :posts, :label2, :string
    add_column :posts, :label3, :string
    add_column :posts, :label4, :string
    add_column :posts, :label5, :string
    add_column :posts, :data1, :integer
    add_column :posts, :data2, :integer
    add_column :posts, :data3, :integer
    add_column :posts, :data4, :integer
    add_column :posts, :data5, :integer
  end
end
