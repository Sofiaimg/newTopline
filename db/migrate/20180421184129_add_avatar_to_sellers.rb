class AddAvatarToSellers < ActiveRecord::Migration[5.1]
  def change
    add_column :sellers, :avatar, :string
  end
end
