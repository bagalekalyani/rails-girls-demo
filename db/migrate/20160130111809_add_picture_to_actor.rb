class AddPictureToActor < ActiveRecord::Migration
  def change
    add_column :actors, :picture, :string
  end
end
