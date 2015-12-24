class AddPriceToMaterials < ActiveRecord::Migration
  def change
    add_column :materials, :price, :integer
  end
end
