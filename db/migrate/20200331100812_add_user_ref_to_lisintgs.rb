class AddUserRefToLisintgs < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :username, :string
  end
end
