class CreatePoems < ActiveRecord::Migration[5.2]
  def change
    create_table :poems do |t|
      t.text :content

      t.timestamps
    end
  end
end
