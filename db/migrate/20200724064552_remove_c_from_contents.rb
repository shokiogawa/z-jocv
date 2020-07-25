class RemoveCFromContents < ActiveRecord::Migration[5.2]
  def change
    remove_column :contents, :c, :string
  end
end
