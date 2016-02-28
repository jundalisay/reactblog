class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :commentable_id
      t.string :commentable_type
      t.text :comment_body

      t.timestamps null: false
    end
    add_reference(:comments, :article, index: true, foreign_key: true)
    # add_reference(:reviews, :user, foreign_key: true)
  end
end