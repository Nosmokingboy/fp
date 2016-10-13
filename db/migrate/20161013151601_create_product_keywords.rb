class CreateProductKeywords < ActiveRecord::Migration[5.0]
  def change
    create_table :product_keywords do |t|
      t.references :keyword, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
