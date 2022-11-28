class Changecomname < ActiveRecord::Migration[7.0]
  def change
    rename_table :commentaires, :comments
  end
end
