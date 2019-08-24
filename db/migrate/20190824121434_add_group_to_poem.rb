class AddGroupToPoem < ActiveRecord::Migration[5.2]
  def change
    add_column :poems, :group, :string
  end
end
