class AddProductRefToImages < ActiveRecord::Migration[5.2]
  def change
    add_reference :images, :products, foreign_key: true
  end
end
