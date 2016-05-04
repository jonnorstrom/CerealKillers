class Revisions < ActiveRecord::Migration
  def change
    create_table :revisions do |t|
      t.string :body, null: false
      t.integer :article_id, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end
