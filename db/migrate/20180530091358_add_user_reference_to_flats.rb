class AddUserReferenceToFlats < ActiveRecord::Migration[5.2]
  def change
    add_reference :flats, :user, index: true
  end
end
