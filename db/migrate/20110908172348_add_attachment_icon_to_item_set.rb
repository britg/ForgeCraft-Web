class AddAttachmentIconToItemSet < ActiveRecord::Migration
  def self.up
    add_column :item_sets, :icon_file_name, :string
    add_column :item_sets, :icon_content_type, :string
    add_column :item_sets, :icon_file_size, :integer
    add_column :item_sets, :icon_updated_at, :datetime
  end

  def self.down
    remove_column :item_sets, :icon_file_name
    remove_column :item_sets, :icon_content_type
    remove_column :item_sets, :icon_file_size
    remove_column :item_sets, :icon_updated_at
  end
end
