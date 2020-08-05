class CreateSContents < ActiveRecord::Migration[5.2]
  def change
    create_table :s_contents do |t|
      t.string :image
      t.string :stitle
      t.text :content
      t.references :t_content, foreign_key: true

      t.timestamps
    end
  end
end
