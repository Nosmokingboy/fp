class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.integer :minimum_order
      t.string :material
      t.string :print_technique
      t.integer :number_of_colors
      t.string :varnish_technique
      t.string :lamination_technique
      t.string :foil_print
      t.boolean :embossed

      t.timestamps
    end
  end
end
