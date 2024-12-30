class AddCascadeDeleteToItems < ActiveRecord::Migration[8.0]
  def change
    remove_foreign_key :items, :lists
    add_foreign_key :items, :lists, on_delete: :cascade
  end
end
