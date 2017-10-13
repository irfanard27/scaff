class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer :phone_number
      t.string :owner

      t.timestamps
    end
  end
end
