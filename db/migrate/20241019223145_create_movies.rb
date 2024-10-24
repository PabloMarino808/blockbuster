class CreateMovies < ActiveRecord::Migration[7.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :synopsis
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
