class CreateExams < ActiveRecord::Migration[5.2]
  def change
    create_table :exams do |t|
      t.references :topic, foreign_key: true
      t.references :user, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
