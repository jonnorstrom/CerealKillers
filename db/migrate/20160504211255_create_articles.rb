class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t. string :title, null: false
      t.integer :user_id, null: false
      t.timestamps null: false
    end
  end

  # add_index(:articles, :title)
end
