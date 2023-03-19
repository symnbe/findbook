class AddIntroduntionToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :introduntion, :text
  end
end
