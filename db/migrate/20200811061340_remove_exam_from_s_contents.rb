class RemoveExamFromSContents < ActiveRecord::Migration[5.2]
  def change
    remove_reference :s_contents, :exam, foreign_key: true
  end
end
