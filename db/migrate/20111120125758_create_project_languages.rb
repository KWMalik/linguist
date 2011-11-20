class CreateProjectLanguages < ActiveRecord::Migration
  def change
    create_table :project_languages do |t|
      t.integer :language_id
      t.integer :project_id

      t.timestamps
    end
  end
end
