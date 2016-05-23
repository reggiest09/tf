class Removeimagefromlistings < ActiveRecord::Migration
  def change
    remove_attachment :listings, :image
  end
end
