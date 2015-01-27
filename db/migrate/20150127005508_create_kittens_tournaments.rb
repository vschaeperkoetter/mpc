class CreateKittensTournaments < ActiveRecord::Migration
  def change
    create_table :kittens_tournaments do |t|
      t.references :kitten, index: true
      t.references :tournament, index: true

      t.timestamps null: false
    end
    add_foreign_key :kittens_tournaments, :kittens
    add_foreign_key :kittens_tournaments, :tournaments
  end
end
