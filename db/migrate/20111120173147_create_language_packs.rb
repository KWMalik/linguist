class CreateLanguagePacks < ActiveRecord::Migration
  def change
    create_table :language_packs do |t|
      t.integer :bundle_id
      t.integer :language_id
      t.string :key
      t.string :text

      t.timestamps
    end
  end
end
