class Posts < ActiveRecord::Migration[6.1]
  def change
    add_column :Posts, :author, :string
  end
end
