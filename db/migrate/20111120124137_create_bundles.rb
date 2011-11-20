class CreateBundles < ActiveRecord::Migration
  def change
    create_table :bundles do |t|
      t.string :name
      t.integer :project_id
      t.integer :language_id

      t.timestamps
    end
  end
end
