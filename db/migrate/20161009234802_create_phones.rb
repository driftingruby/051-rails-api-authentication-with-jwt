class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.integer :user_id
      t.string :name
      t.string :phone_number

      t.timestamps
    end
    add_index :phones, :user_id
  end
end
