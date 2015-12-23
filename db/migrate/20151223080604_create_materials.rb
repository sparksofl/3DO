class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :m_type
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
