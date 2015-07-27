class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.string :photo_url
      t.datetime :date_taken
    end
  end
end
