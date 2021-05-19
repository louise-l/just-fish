class AddSmallDescriptionToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :small_description, :text
  end
end
