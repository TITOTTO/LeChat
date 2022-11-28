class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :rate
      t.references :commentable, polymorphic: true

      t.timestamps
    end
  end
end