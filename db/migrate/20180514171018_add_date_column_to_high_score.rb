class AddDateColumnToHighScore < ActiveRecord::Migration
  def change
    add_column :high_scores, :date, :datetime
  end
end
