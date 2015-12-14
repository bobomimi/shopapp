class AddFildsToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :name, :string
    add_column :orders, :country, :string
    add_column :orders, :street_address, :string
    add_column :orders, :zip_postal_code, :integer
    add_column :orders, :tel_mobile, :integer
  end
end
