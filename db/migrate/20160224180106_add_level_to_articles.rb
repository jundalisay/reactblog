class AddLevelToArticles < ActiveRecord::Migration
  def change
  	add_column :articles, :level, :integer, default: 0
  end
end