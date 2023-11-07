class RemoveTitileFromBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :titile, :string
  end
end
