class AddPublishedToTopics < ActiveRecord::Migration[6.0]
  def change
    add_column :topics, :published, :boolean, default: true
  end
end
