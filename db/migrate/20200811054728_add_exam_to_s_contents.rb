class AddExamToSContents < ActiveRecord::Migration[5.2]
  def change
    add_reference :s_contents, :exam, foreign_key: true
  end
end
