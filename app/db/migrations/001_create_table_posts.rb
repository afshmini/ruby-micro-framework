class CreateTablePosts < Sequel::Migration
  def up
    create_table :posts do
      primary_key :id
      column :title, :text
      column :content, :text
      index :title
    end
  end

  def down
    drop_table :posts
  end
end
