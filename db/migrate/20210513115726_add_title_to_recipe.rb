class AddTitleToRecipe < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :title, :string
  end
end
