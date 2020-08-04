class CreateTContents < ActiveRecord::Migration[5.2]
  def change
    create_table :t_contents do |t|
      t.references :topic, foreign_key: true
      t.references :user, foreign_key: true
      t.string :image
      t.text :c
      t.string :title

      t.timestamps
    end
  end
end
