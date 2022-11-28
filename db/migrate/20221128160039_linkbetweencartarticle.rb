class Linkbetweencartarticle < ActiveRecord::Migration[7.0]
  def change
    add_reference :cartfulls, :article, foreign_key: true
    add_reference :cartfulls, :cart, foreign_key: true
  end
end
