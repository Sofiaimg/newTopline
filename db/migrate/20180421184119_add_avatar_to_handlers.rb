class AddAvatarToHandlers < ActiveRecord::Migration[5.1]
  def change
    add_column :handlers, :avatar, :string
  end
end
