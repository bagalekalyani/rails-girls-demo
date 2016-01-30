class AddPictureToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :picture, :string
  end
end
