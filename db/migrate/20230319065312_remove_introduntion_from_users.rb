class RemoveIntroduntionFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :introduntion, :text
  end
end
