class CreateRelatives < ActiveRecord::Migration[5.2]
  def change
    create_table :relatives do |t|
      t.references :post, foreign_key: true
      t.references :t_content, foreign_key: true

      t.timestamps
    end
  end
end
