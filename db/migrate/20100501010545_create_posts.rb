class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.references :topic
      t.string :subject
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
