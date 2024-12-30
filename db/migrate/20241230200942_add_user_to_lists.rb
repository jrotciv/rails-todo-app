class AddUserToLists < ActiveRecord::Migration[8.0]
  def change
    add_reference :lists, :user, null: false, foreign_key: { on_delete: :cascade }
  end
end
