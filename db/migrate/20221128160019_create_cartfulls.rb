class CreateCartfulls < ActiveRecord::Migration[7.0]
  def change
    create_table :cartfulls do |t|

      t.timestamps
    end
  end
end
