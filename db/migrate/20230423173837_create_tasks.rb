class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.bigint :parent_id
      t.string :parent_type
      t.timestamps
    end
  end
end
