class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.references :user, index: true
      t.string :winner

      t.timestamps null: false
    end
    add_foreign_key :tournaments, :users
  end
end
