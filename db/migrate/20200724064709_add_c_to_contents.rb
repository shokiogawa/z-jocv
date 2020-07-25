class AddCToContents < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :c, :text
  end
end
