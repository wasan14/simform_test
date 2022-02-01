class CreateMemberGames < ActiveRecord::Migration[7.0]
  def change
    create_table :member_games do |t|
      t.integer :score
      t.boolean :winner
      t.references :member, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
