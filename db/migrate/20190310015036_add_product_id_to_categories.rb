class AddProductIdToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :product_id, :integer
  end
end
