class AddFildToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :email, :string
  end
end
