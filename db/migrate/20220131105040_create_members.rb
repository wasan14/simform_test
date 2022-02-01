class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :name
      t.integer :age
      t.bigint :contact_number

      t.timestamps
    end
  end
end
