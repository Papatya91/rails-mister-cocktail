class AddReferenceToDoses < ActiveRecord::Migration[5.2]
  def change
    remove_column :doses, :cocktail
    remove_column :doses, :ingredient
    add_reference :doses, :cocktail, foreign_key: true
    add_reference :doses, :ingredient, foreign_key: true
  end
end
