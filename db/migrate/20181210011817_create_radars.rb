class CreateRadars < ActiveRecord::Migration[5.1]
  def change
    create_table :radars do |t|
      t.string :name
      t.references :ring, foreign_key: true
      t.references :team, foreign_key: true
      t.boolean :isnew
      t.text :description
      t.string :link

      t.timestamps
    end
  end
end
