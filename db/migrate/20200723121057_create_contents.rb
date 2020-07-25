class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string :c
      t.string :title
      t.string :image
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
