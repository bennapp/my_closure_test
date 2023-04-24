class CreateProjectHierarchies < ActiveRecord::Migration[7.0]
  def change
    create_table :hierarchies, id: false do |t|
      t.integer :ancestor_id, null: false
      t.string :ancestor_type, null: false
      t.integer :descendant_id, null: false
      t.string :descendant_type, null: false
      t.integer :generations, null: false
    end

    add_index :hierarchies, [:ancestor_id, :ancestor_type, :descendant_id, :descendant_type, :generations],
      unique: true,
      name: "project_anc_desc_idx"

    add_index :hierarchies, [:descendant_id],
      name: "project_desc_idx"
  end
end
