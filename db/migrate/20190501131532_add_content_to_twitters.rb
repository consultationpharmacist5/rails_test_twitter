class AddContentToTwitters < ActiveRecord::Migration[5.1]
  def change
    add_column :twitters, :content, :text
  end
end
