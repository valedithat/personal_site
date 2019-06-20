class RemoveArticleFromCategory < ActiveRecord::Migration[5.2]
  def change
    remove_reference :categories, :article, index: true, foreign_key: true
  end
end
