class CreateJoinTableArticlesOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :join_table_articles_orders do |t|
      t.belongs_to :article, null: false, foreign_key: true
      t.belongs_to :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
