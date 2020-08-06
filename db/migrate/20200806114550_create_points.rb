class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.string :p
      t.references :t_content, foreign_key: true

      t.timestamps
    end
  end
end
