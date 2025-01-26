class CreateInfoCards < ActiveRecord::Migration[8.0]
  def change
    create_table :info_cards do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
