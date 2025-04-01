class AddImageToComments < ActiveRecord::Migration[6.0]
  def up
    add_attachment :comments, :image
  end

  def down
    remove_attachment :comments, :image
  end
end
