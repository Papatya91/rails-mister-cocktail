class CreateDoses < ActiveRecord::Migration[5.2]
  def change
    create_table :doses do |t|
      t.string :cocktail
      t.string :ingredient
      t.string :description

      t.timestamps
    end
  end
end
