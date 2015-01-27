class CreateKittens < ActiveRecord::Migration
  def change
    create_table :kittens do |t|
      t.string :url
      t.integer :wins

      t.timestamps null: false
    end
  end
end
