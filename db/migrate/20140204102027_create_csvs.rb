class CreateCsvs < ActiveRecord::Migration
  def change
    create_table :csvs do |t|
      t.string :name
      t.string :title

      t.timestamps
    end
  end
end
