class CreateRegisteredUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :registered_users do |t|
      t.date :date
      t.integer :number

      t.timestamps
    end
  end
end
