class CreateCsvFiles < ActiveRecord::Migration[7.1]
  def change
    create_table :csv_files do |t|

      t.timestamps
    end
  end
end
