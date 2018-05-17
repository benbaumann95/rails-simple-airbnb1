class AddPictureUrlToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :pictureUrl, :string
  end
end
