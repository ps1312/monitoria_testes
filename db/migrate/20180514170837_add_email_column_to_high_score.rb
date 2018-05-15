class AddEmailColumnToHighScore < ActiveRecord::Migration
  def change
    add_column :high_scores, :email, :string
  end
end
