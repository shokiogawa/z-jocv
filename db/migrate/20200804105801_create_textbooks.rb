class CreateTextbooks < ActiveRecord::Migration[5.2]
  def change
    create_table :textbooks do |t|
      t.string :grade

      t.timestamps
    end
  end
end
