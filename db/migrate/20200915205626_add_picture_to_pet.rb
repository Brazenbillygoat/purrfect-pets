class AddPictureToPet < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :picture, :string
  end
end
