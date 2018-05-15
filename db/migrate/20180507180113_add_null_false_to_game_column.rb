class AddNullFalseToGameColumn < ActiveRecord::Migration
  def change
    change_column_null(:high_scores, :game, false)
  end
end
